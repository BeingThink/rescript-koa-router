// Generated by ReScript, PLEASE EDIT WITH CARE

import Koa from "koa";
import KoaRouter from "koa-router";

var app = new Koa();

var router = new KoaRouter(undefined);

router.get("/login", (function (context, next) {
        context.body = "hello";
      }));

app.use(router.routes());

app.listen(8080, (function (param) {
        console.log("server is start success!");
      }));

export {
  app ,
  router ,
}
/* app Not a pure module */
