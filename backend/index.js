const express = require("express")

const app = express();
const cors = require('cors')

// const { logger } = require('./middlewares')
// app.use(logger)

app.use(cors())

// Statics
app.use(express.static('static'))
app.use(express.json()) // for parsing application/json
app.use(express.urlencoded({ extended: true })) // for parsing application/x-www-form-urlencoded

// routers
const indexRouter = require('./routes/index')
const orderRouter = require('./routes/order')
const searchRouter = require('./routes/search')
const userRouter = require('./routes/reference/user')


app.use(indexRouter.router)
app.use(orderRouter.router)
app.use(searchRouter.router)
app.use(userRouter.router)

app.listen(3000, () => {
  console.log(`Example app listening at http://localhost:3000`)
})