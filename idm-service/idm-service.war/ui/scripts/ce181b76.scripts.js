"use strict";
angular.module("idmUiApp", ["ngRoute", "ngResource", "ngCookies", "pascalprecht.translate", "ajoslin.promise-tracker", "ui.bootstrap", "ui.directives", "ccue.session", "org", "org.security", "org.theme", "org.translate"]).config(["$routeProvider", "$locationProvider", function (a, b) {
    b.html5Mode(!0), a.when("/login/error", {
        title: "error.title",
        templateUrl: "views/error.html",
        controller: "RefererLinkCtrl"
    }).when("/login/404", {
        title: "404.title",
        templateUrl: "views/404.html",
        controller: "RefererLinkCtrl"
    }).when("/login/invalid_token", {
        title: "error.title",
        templateUrl: "views/invalidToken.html",
        controller: "RefererLinkCtrl"
    }).when("/login/invalid_credentials", {
        title: "error.title",
        templateUrl: "views/invalidCredentials.html",
        controller: "RefererLinkCtrl"
    }).when("/login/invalid_tenant", {
        title: "error.title",
        templateUrl: "views/invalidTenant.html",
        controller: "RefererLinkCtrl"
    }).when("/login/unavailable", {
        title: "error.title",
        templateUrl: "views/unavailable.html",
        controller: "RefererLinkCtrl"
    }).when("/login", {
        title: "login.title",
        templateUrl: "views/login.html",
        controller: "LoginCtrl"
    }).when("/logout", {
        title: "logout.title",
        templateUrl: "views/logout.html",
        controller: "LogoutCtrl"
    }).when("/logout/close", {
        title: "logout.title",
        templateUrl: "views/simpleLogout.html",
        controller: "SimpleLogoutCtrl"
    }).otherwise({redirectTo: "/login/404"})
}]).config(["$translateProvider", function (a) {
    a.useStaticFilesLoader({
        prefix: "locales/",
        suffix: "/rb.json"
    }), a.addInterpolation("$translateMessageFormatInterpolation"), a.fallbackLanguage("en")
}]).config(["$httpProvider", function (a) {
    a.defaults.xsrfCookieName = "J-XSRF-TOKEN"
}]).run(["$rootScope", "$translate", function (a, b) {
    a.$on("$routeChangeSuccess", function (c, d) {
        if (b(d.title) === d.title)var e = a.$on("$translateChangeSuccess", function () {
            e(), document.title = b(d.title)
        }); else document.title = b(d.title)
    })
}]).config(["$sessionProvider", function (a) {
    a.prefix("idmUi_")
}]).config(["org.resourceProvider", function (a) {
    a.url("api/public/tenant/:id")
}]).config(["org.translate.resolverProvider", function (a) {
    a.cookieName("JLOCALE")
}]).run(["$rootScope", "$translate", function (a, b) {
    a.$on("$routeChangeSuccess", function (c, d) {
        if (b(d.title) === d.title)var e = a.$on("$translateChangeSuccess", function () {
            e(), document.title = b(d.title)
        }); else document.title = b(d.title)
    })
}]).run(["$translate", "$cookies", "$rootScope", function (a, b, c) {
    var d = b.JLOCALE;
    d && (d = d.replace("_", "-")), c.$on("$translateChangeError", function () {
        d.indexOf("-") > 0 ? (d = d.split("-")[0], a.uses(d)) : a.fallbackLanguage() !== d ? a.uses(a.fallbackLanguage()) : console.error("Could not load default locale")
    }), a.uses(d)
}]).run(function () {
    var a = angular.element("#opbs-storage-prefix").text().trim();
    opbs.prefix(a)
}),
    angular.module("idmUiApp").controller("LoginCtrl", ["$scope", "$routeParams", "authenticationSvc", "organization", "$location", "securityPopupSvc", "tokenStateSvc", "tokenRedirectSvc", "$session",
        function (a, b, c, d, e, f, g, h) {
            var name = escape("username");
            var allcookies = document.cookie;
            name += "=";
            var cookie = "";
            var pos = allcookies.indexOf(name);
            if (pos != -1) {
                var start = pos + name.length;
                var end = allcookies.indexOf(";", start);
                if (end == -1) end = allcookies.length;
                var value = allcookies.substring(start, end);
                cookie = unescape(value);
            }
        a.credentials = {
            "username": cookie
        },
        a.credentials.tenantId = b.tenant, a.disabled = !0, a.credentials.tenantId ? (d.use(a.credentials.tenantId),
        d.get().then(function (b) {
        a.tenant = b, f.show(), a.disabled = !1

    }, function (a) {
        console.error(a), a.status >= 500 ? e.url("/login/unavailable").replace() : e.url("/login/invalid_tenant").replace()
    })) : e.url("/login/invalid_tenant").replace(), a.$on("tokenStateError", function () {
        e.url("/login/error")
    }), a.$on("tokenStateInvalid", function (b, c) {
        a.disabled = !0, a.error = !0, a.message = "login.error.invalid_token", h.redirectInvalidToken(c)
    }), g.initialize(), a.login = function () {
        a.disabled = !0, delete a.message, delete a.error, c.post({}, {
            tenantName: a.credentials.tenantId,
            passwordCredentials: {username: a.credentials.username, password: a.credentials.password}
        }).$promise.then(function (a) {
            opbs.set(a.browserState), h.redirectAuthenticatedUser(a.returnUri.return_uri)
        }, function (b) {
            b.data && b.data.code ? "INVALID_TOKEN" === b.data.code ? g.invalidate() : "SERVICE_UNAVAILABLE" === b.data.code ? (a.disabled = !1, a.error = !0, a.message = "login.error.service_unavailable") : (a.disabled = !1, a.error = !0, a.message = "login.error.invalid_credentials") : (a.disabled = !1, a.error = !0, a.message = "login.error.service_unavailable")
        })
    }
}]), angular.module("idmUiApp").controller("RefererLinkCtrl", ["$scope", "refererSvc", function (a, b) {
    a.link = b.get()
}]), angular.module("idmUiApp").controller("LogoutCtrl", ["$scope", "$routeParams", "organization", "$location", "tokenStateSvc", "tokenRedirectSvc", "$window", "$session", function (a, b, c, d, e, f, g, h) {
    h.clear(), opbs.clear(), a.tenantId = b.tenant, a.disabled = !0, a.tenantId ? (c.use(a.tenantId), c.get().then(function (b) {
        a.tenant = b, a.disabled = !1
    }, function (a) {
        console.error(a), a.status >= 500 ? d.url("/login/unavailable").replace() : d.url("/login/invalid_tenant").replace()
    })) : d.url("/login/invalid_tenant").replace(), a.$on("tokenStateError", function () {
        d.url("/login/error")
    }), a.$on("tokenStateInvalid", function (b, c) {
        a.disabled = !0, a.error = !0, a.message = "login.error.invalid_token", f.redirectInvalidToken(c)
    }), e.initialize(), a.login = function () {
        d.path("login")
    }
}]), angular.module("idmUiApp").controller("SimpleLogoutCtrl", ["$scope", "$routeParams", "organization", "$location", "$window", "$session", function (a, b, c, d, e, f) {
    f.clear(), opbs.clear(), a.tenantId = b.tenant, a.disabled = !0, a.tenantId ? (c.use(a.tenantId), c.get().then(function (b) {
        a.tenant = b, a.disabled = !1
    }, function (a) {
        console.error(a), a.status >= 500 ? d.url("/login/unavailable").replace() : d.url("/login/invalid_tenant").replace()
    })) : d.url("/login/invalid_tenant").replace()
}]), angular.module("idmUiApp").factory("authenticationSvc", ["$resource", function (a) {
    return a("api/public/authenticate", {}, {post: {method: "POST", isArray: !1}})
}]), angular.module("idmUiApp").factory("securityPopupSvc", ["organization", "$modal", "$translate", function (a, b, c) {
    return {
        show: function () {
            a.get().then(function (a) {
                if (a.securityLevel) {
                    var d = "security.labels.".concat(a.securityLevel.toUpperCase()), e = c(d);
                    e === d && (e = a.securityLevel), b.open({
                        templateUrl: "views/dialog/securityPopup.html",
                        controller: "SecurityPopupCtrl",
                        resolve: {
                            model: function () {
                                return {
                                    tenant: a,
                                    securityLabel: e,
                                    buttons: [{label: "security.proceed", cssClass: "btn-primary", result: "proceed"}]
                                }
                            }
                        }
                    })
                }
            })
        }
    }
}]).controller("SecurityPopupCtrl", ["$scope", "$modalInstance", "model", function (a, b, c) {
    a.securityLabel = c.securityLabel, a.tenant = c.tenant, a.buttons = c.buttons, a.close = function (a) {
        "proceed" === a && b.close(a)
    }
}]), angular.module("idmUiApp").factory("refererSvc", ["$cookies", function (a) {
    return {
        get: function () {
            var b = a.JREFERER;
            return b ? decodeURIComponent(b) : void 0
        }
    }
}]), angular.module("idmUiApp").factory("tokenSvc", ["$resource", function (a) {
    return a("api/public/token", {}, {get: {method: "GET"}})
}]), angular.module("idmUiApp").service("tokenStateSvc", ["$rootScope", "$timeout", "tokenSvc", function (a, b, c) {
    function d() {
        g && b.cancel(g), g = b(function () {
            e()
        }, i)
    }

    function e() {
        return c.get(function (a) {
            h = a.supportErrorCallback, a.expired ? f() : d()
        }, function () {
            a.$broadcast("tokenStateError")
        }).$promise
    }

    function f() {
        g && b.cancel(g), a.$broadcast("tokenStateInvalid", !!h)
    }

    var g, h, i = 3e4;
    this.initialize = function () {
        e()
    }, this.invalidate = function () {
        f()
    }
}]), angular.module("idmUiApp").service("tokenRedirectSvc", ["$timeout", "$window", "$location", function (a, b, c) {
    var d = 1e3;
    this.redirectInvalidToken = function (e) {
        e ? a(function () {
            b.open(c.absUrl(), "_self")
        }, d) : c.url("/login/invalid_token").replace()
    }, this.redirectAuthenticatedUser = function (a) {
        b.open(a, "_self")
    }
}]), angular.module("idmUiApp").directive("errorLanding", function () {
    return {
        restrict: "E",
        templateUrl: "views/directives/errorLanding.html",
        transclude: !0,
        scope: {header: "=", msg: "=", action: "=", msgIcon: "@?", msgAlertClass: "@?"}
    }
}), angular.module("idmUiApp").directive("idmBusy", function () {
    return {
        restrict: "A",
        transclude: !0,
        scope: {busy: "@idmBusy"},
        templateUrl: "views/directives/loader.html",
        controller: ["$scope", "$route", "$timeout", "promiseTracker", function (a, b, c, d) {
            a.trackers = a.busy.replace(/\s+/g, "").split(","), a.indicators = [];
            for (var e in a.trackers)a.indicators.push(d(a.trackers[e]));
            a.activeTrackers = function () {
                return a.indicators.any(function (a) {
                    return a.active()
                })
            }
        }]
    }
});