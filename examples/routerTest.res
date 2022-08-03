open Router
open Koa

let app = Koa.koa()

let router = Router.router(None)

router->get("/login", (context, next) => {
    context.body = "hello"
})

app->use(router->routes())

let _ = app->listen(8080, _ => {Js.Console.log("server is start success!")})
