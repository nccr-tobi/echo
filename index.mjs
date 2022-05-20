import Koa from 'koa'

const app = new Koa()

app.use(async ctx => {
  const [_, echo] = ctx.request.url.split('/')
  ctx.body = decodeURI(echo)
})

app.listen(3000)
