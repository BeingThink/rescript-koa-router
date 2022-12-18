# Rescript-Koa-Router

## install

```shell
npm install @futurert/rescript-koa-router @koa/router @futurert/rescript-koa koa
```

This command will install all koa requirements.

+ @koa/router
[Router](https://github.com/koajs/router) middleware for Koa.

+ @futurert/rescript-koa-router
rescript bindings for @koa/router

+ koa
lightweight web framework for node.js, [find more...](https://github.com/koajs/koa)

+ @futurert/rescript-koa
rescript bindings for koa

## How to use this?

```Rescript
open Router
open! Koa

let app = Koa.koa()

let router = Router.router(None)

router->get("/login", (context, next) => {
    context.body = "hello"
})

app->use(router->routes())

let _ = app->listen(8080, _ => {Js.Console.log("server is start success!")})
```

Just like this, you should using this router with [rescript-koa](https://github.com/FutureRuntime/rescript-koa), try it for fun!
