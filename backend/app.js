const express = require('express');
const app = express();
const accountRouter = require('./routers/account');
const categoryRouter = require('./routers/category');
const productRouter = require('./routers/product')

app.use(express.json());
app.use('/account', accountRouter);
app.use('/category',categoryRouter);
app.use('/product',productRouter)

app.listen(3000, () => {
    console.log('程序已经运行');
});