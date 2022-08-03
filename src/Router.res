type object

type routerInstance = {
    opts: object,
    methods: array<string>,
    exclusive: bool,
    params: object,
    stack: array<object>,
    host: string,
}

type options = {
    methods: array<string>,
    exclusive: bool,
    params: object,
    host: string,
};

@module("koa-router") @new external router: option<options> => routerInstance = "default"

type context = {
    mutable body: string,
}

// use to add url method and handle function
@send external get: (routerInstance, string, Koa.middleware) => unit = "get"
@send external post: (routerInstance, string, Koa.middleware) => unit = "post"
@send external put: (routerInstance, string, Koa.middleware) => unit = "put"
@send external delete: (routerInstance, string, Koa.middleware) => unit = "delete"
@send external head: (routerInstance, string, Koa.middleware) => unit = "head"
@send external option: (routerInstance, string, Koa.middleware) => unit = "option"

// koa-routerInstance registry function
@send external routes: (routerInstance, unit) => Koa.middleware = "routes"
@send external allowedMethods: (routerInstance, unit) => Koa.middleware = "allowedMethods"


