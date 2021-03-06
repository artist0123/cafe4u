const express = require("express");

const pool = require("../config");
const { isLoggedIn } = require('../middlewares');

router = express.Router();

const orderOwner = async (req, res, next) => {
  if (req.user.user_type === 'employee') {
    return next()
  }
  console.log('pass')
  const [[order]] = await pool.query('SELECT * FROM `order` WHERE order_id=?', [req.params.orderId])
  console.log(order)
  if (order.user_id !== req.user.user_id) {
    return res.status(403).send('You do not have permission to perform this action')
  }
  console.log('passh')
  return next()
}

//Add Order
router.put("/cut/userpoint", isLoggedIn, async function (req, res, next) {
  // Begin transaction
  const conn = await pool.getConnection();
  await conn.beginTransaction();
  
  try {
    let results = await conn.query(
      "select * from promotion where pro_id = ?",
      [req.body.pro_id]
    );
    let results2 = await conn.query(
      "select * from user where user_id = ?",
      [req.user.user_id]
    );
    if(results[0].pro_type == 'point'){
      await conn.query(
        "update user set user_point = ? where user_id = ?",
        [results2[0].user_point-results[0].point_need,req.user.user_id]
      );
    }
    await conn.commit();
    res.json({
        success:'Yes',

    });
  } catch (err) {
    await conn.rollback();
    return res.status(400).json(err);
  } finally {
    conn.release();
  }
});

//Add Order
router.post("/add/order", isLoggedIn, async function (req, res, next) {
  // Begin transaction
  const conn = await pool.getConnection();
  await conn.beginTransaction();
  
  try {
    var date = new Date().toISOString().slice(0, 19).replace('T', ' ');
    console.log(date,req.body.totalprice,req.user.user_id,1,req.body.cafeId[0].cafe_branchid,req.body.pro_id=="none"?null:req.body.pro_id,'in queue')
    let results = await conn.query(
      "insert into `order`(order_datetime,order_totalprice,user_id,emp_id,cafe_branchid,pro_id,order_status) \
      values (?,?,?,?,?,?,?)",
      [date,req.body.totalprice,req.user.user_id,null,req.body.cafeId[0].cafe_branchid,req.body.pro_id=="none"?null:req.body.pro_id,'in queue']
    );
    for(var i=0;i<req.body.product.length;i++){
      for(var y=0;y<req.body.info.length;y++){
        if(req.body.product[i].product_id == req.body.info[y].product_id){
          let results2 = await conn.query(
            "insert into `order_item`(product_price,order_amount,item_totalprice,product_id,order_id) \
            values (?,?,?,?,?)",
            [req.body.product[i].product_price,req.body.info[y].quantity,req.body.product[i].product_price*req.body.info[y].quantity,req.body.info[y].product_id,results[0].insertId]
          );
          if(req.body.info[y].option != null){
            let results = await conn.query(
              "insert into `product_order_item`(item_no,product_id) \
              values (?,?)",
              [results2[0].insertId, req.body.info[y].option]
            );
          }
        }
      }
    }
    
    await conn.commit();
    res.json({
        orderId:results[0].insertId,

    });
  } catch (err) {
    await conn.rollback();
    return res.status(400).json(err);
  } finally {
    conn.release();
  }
});

// Customer
router.get("/orders/:user_id", async function (req, res, next) {
  // Begin transaction
  const conn = await pool.getConnection();
  await conn.beginTransaction();

  try {
    let results = await conn.query(
      "select * from `order` o join cafe using (cafe_branchid) left outer join user u on (emp_id = u.user_id) left outer join promotion p using (pro_id) left outer join product p2 on (p.product_free = p2.product_id) where o.user_id = ?;",
      [parseInt(req.params.user_id)]
    );
    let results2 = await conn.query(
        "select * from order_item  join product using (product_id) where order_id in (select order_id from `order`  where user_id = ?)",
        [parseInt(req.params.user_id)]
      );
    let results3 = await conn.query(
        "select * from image where product_id in (select distinct product_id from order_item  join product using (product_id) where order_id in (select order_id from `order`  where user_id = ?)) \
        or product_id in (SELECT product_id FROM `order` join promotion_product using (pro_id)  where user_id = ?)",
        [parseInt(req.params.user_id),parseInt(req.params.user_id)]
    );
    let results4 = await conn.query(
      "select * from order_item join product_order_item p using (item_no) join product p2 on (p.product_id = p2.product_id) where order_id in (select order_id from `order`  where user_id = ?)",
      [parseInt(req.params.user_id)]
    );
    await conn.commit();
    res.json({
        orders:results[0],
        order_item:results2[0],
        image:results3[0],
        option:results4[0]
    });
  } catch (err) {
    await conn.rollback();
    return res.status(400).json(err);
  } finally {
    conn.release();
  }
});



// Employee
router.get("/admin/orders/:cafeId", async function (req, res, next) {
    // Begin transaction
    const conn = await pool.getConnection();
    await conn.beginTransaction();
  
    try {
      let results = await conn.query(
        "select * from `order` o join cafe using (cafe_branchid) left outer join user u on (emp_id = u.user_id) left outer join promotion p using (pro_id) left outer join product p2 on (p.product_free = p2.product_id) where o.cafe_branchid = ?;",
        [parseInt(req.params.cafeId)]
      );
      let results2 = await conn.query(
          "select * from order_item  join product using (product_id) where order_id in (select order_id from `order`  where cafe_branchid = ?)",
          [parseInt(req.params.cafeId)]
        );
      let results3 = await conn.query(
          "select * from image where product_id in (select distinct product_id from order_item  join product using (product_id) where order_id in (select order_id from `order`  where cafe_branchid = ?)) \
          or product_id in (SELECT product_id FROM `order` join promotion_product using (pro_id)  where cafe_branchid = ?)",
          [parseInt(req.params.cafeId),parseInt(req.params.cafeId)]
      );
      let results4 = await conn.query(
        "select * from order_item join product_order_item p using (item_no) join product p2 on (p.product_id = p2.product_id) where order_id in (select order_id from `order`  where cafe_branchid = ?)",
        [parseInt(req.params.cafeId)]
      );
      await conn.commit();
      res.json({
          orders:results[0],
          order_item:results2[0],
          image:results3[0],
          option:results4[0]
      });
    } catch (err) {
      await conn.rollback();
      return res.status(400).json(err);
    } finally {
      conn.release();
    }
  });


//Both Use
router.put("/admin/orders/:orderId", async function (req, res, next) {


    const conn = await pool.getConnection();
    await conn.beginTransaction();
  
    try {
      if(req.body.toStatus == 'pending'){
        await conn.query(
          "update `order` set order_status = ?, emp_id = ? where order_id = ?",
          [req.body.toStatus,req.body.user.user_id,parseInt(req.params.orderId)]
        );
      }
      else{

        await conn.query(
          "update `order` set order_status = ?  where order_id = ?",
          [req.body.toStatus,parseInt(req.params.orderId)]
        );
      }
        let results = await conn.query(
            "select * from `order` o join cafe using (cafe_branchid) join user u on (emp_id = u.user_id) left outer join promotion p using (pro_id) left outer join product p2 on (p.product_free = p2.product_id) where o.order_id = ?;",
            [parseInt(req.params.orderId)]
        );
      await conn.commit();
      res.json({
          newstatus:results[0]
      });
    } catch (err) {
      await conn.rollback();
      return res.status(400).json(err);
    } finally {
      conn.release();
    }
});

exports.router = router;
