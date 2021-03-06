angular.module("idmUiApp").run(["$templateCache", function (a) {
    "use strict";
    a.put("views/404.html", '<error-landing header="\'404.title\' | translate" msg="\'404.detail\' | translate" action="\'error.explanation\' | translate" msg-icon="icon-emoticon-sad" msg-alert-class="text-critical"><div class="row"><div class="col-md-4 col-md-offset-4 col-xs-12"><a ng-href="{{link}}" type="button" id="back" class="btn btn-primary btn-block" ng-if="link">{{ \'common.back\' | translate }}</a></div></div></error-landing>'), a.put("views/dialog/securityPopup.html", '<div class="text-center"><div class="modal-header compact" ng-class="tenant.securityLevel.toLowerCase()"><h2><i class="icon-alert-option"></i></h2><h3><span>{{ securityLabel }}</span></h3></div><div class="modal-body"><h5>{{ \'disclaimerText\' | orgTranslate }}</h5></div><div class="modal-footer"><div class="col-xs-12" ng-repeat="btn in buttons"><button ng-click="close(btn.result)" class="btn btn-block" ng-class="btn.cssClass">{{ btn.label | translate }}</button></div></div></div>'), a.put("views/directives/errorLanding.html", '<div class="content"><div class="container text-center"><br><div class="row"><div class="col-xs-12" style="font-size: 6em"><i class="icon-hp text-primary"></i></div></div><hr><div class="row"><div class="col-xs-12"><div ng-class="msgAlertClass"><h1><i ng-class="msgIcon"></i></h1><h2><span>{{ header }}</span></h2></div></div></div><div class="row"><div class="col-xs-12"><h4><span>{{ msg }}</span></h4></div></div><div class="row"><div class="col-md-10 col-md-offset-1 col-xs-12"><br><div ng-transclude=""></div></div></div><hr><div class="row"><div class="col-md-10 col-md-offset-1 col-xs-12"><h6><small>{{ action }}</small></h6></div></div></div></div>'), a.put("views/directives/loader.html", '<div ng-if="activeTrackers()"><div class="md-modal md-effect-just-me md-show" enforce-focus=""><div class="md-content text-center compact"><div class="loader-icon spin"><i class="icon-refresh"></i></div><h3 translate="common.loader.message"></h3></div></div><div class="md-overlay"></div></div><div ng-transclude=""></div>'), a.put("views/error.html", '<error-landing header="\'error.title\' | translate" msg="\'error.detail\' | translate" action="\'error.explanation\' | translate" msg-icon="icon-alert" msg-alert-class="text-critical"><div class="row"><div class="col-md-4 col-md-offset-4 col-xs-12"><a ng-href="{{link}}" type="button" id="back" class="btn btn-primary btn-block" ng-if="link">{{ \'common.back\' | translate }}</a></div></div></error-landing>'), a.put("views/invalidCredentials.html", '<error-landing header="\'invalidCredentials.title\' | translate" msg="\'invalidCredentials.detail\' | translate" action="\'invalidCredentials.explanation\' | translate" msg-icon="icon-id" msg-alert-class="text-critical"><div class="row"><div class="col-md-4 col-md-offset-4 col-xs-12"><a ng-href="{{link}}" type="button" id="back" class="btn btn-primary btn-block" ng-if="link">{{ \'common.back\' | translate }}</a></div></div></error-landing>'), a.put("views/invalidTenant.html", '<error-landing header="\'invalidTenant.title\' | translate" msg="\'invalidTenant.detail\' | translate" action="\'invalidTenant.explanation\' | translate" msg-icon="icon-organization-option" msg-alert-class="text-critical"><div class="row"><div class="col-md-4 col-md-offset-4 col-xs-12"><a ng-href="{{link}}" type="button" id="back" class="btn btn-primary btn-block" ng-if="link">{{ \'common.back\' | translate }}</a></div></div></error-landing>'), a.put("views/invalidToken.html", '<error-landing header="\'invalidToken.title\' | translate" msg="\'invalidToken.detail\' | translate" action="\'invalidToken.explanation\' | translate" msg-icon="icon-key" msg-alert-class="text-critical"><div class="row"><div class="col-md-4 col-md-offset-4 col-xs-12"><a ng-href="{{link}}" type="button" id="back" class="btn btn-primary btn-block" ng-if="link">{{ \'common.back\' | translate }}</a></div></div></error-landing>'),
        a.put("views/login.html", '<security-banner class="navbar-fixed-top"></security-banner>' +
            '<div ng-app="login" idm-busy="tenant$get,theme$get"><form ng-submit="login()"><fieldset>' +
            '<div class="row login-76">' +
            '<div class="col-xs-12" ng-if="tenant.iconUrl"><img ng-src="{{tenant.iconUrl}}" class="brand-logo"></div>' +
            '<div class="login-header" ng-if="tenant && !tenant.iconUrl">' +
            '<i class="text-primary" style="font-style: normal; margin-left: 50px; ">' +
            '<img src="images/HPE_Helion_Logo.png" width="60px" height="60px">' +
            '<span style="font-size: 0.4em; color: black; vertical-align: middle"><b>HPE</b> Helion Managed Cloud</span>' +
            '</i>' +
            '</div>' +
            '<div class="login-bg">' +
            '' +
            '<div class="login-fields login-translucent">' +
            '<div class="row" style="margin-left: 0px; margin-right: 0px">' +
            '<label for="username" translate="login.username"></label>' +
            '<input id="username" name="username" class="form-control" type="text" ng-model="credentials.username" autofocus="" ng-disabled="disabled" autocomplete="off">' +
            '<label style="margin-top: 5px;" for="password" translate="login.password"></label>' +
            '<input id="password" class="form-control" type="password" ng-model="credentials.password" ng-disabled="disabled" autocomplete="off">' +
            '<div class="row">' +
            '<span class="remember_label">Remember me</span>' +
            '<section class="model-2"><div class="checkbox" style="float: right; margin-right: 10px;">' +
            '<input id="remember" type="checkbox" checked onclick="checkRemember();"><label></label>' +
            '</div></section>' +
            '</div>' +
            '</div>' +
            '' +
            '<div class="row" style="margin-left: 0px; margin-right: 0px">' +
            '<div style="width: 100%">' +
            '<div id="flash" class="alert-box alert alert-danger" ng-if="message"><i class="icon-alert"></i> <span>{{ message | translate }}</span>' +
            '</div>' +
            '</div>' +
            '</div>' +
            '<div class="row" style="margin-left: 0px; margin-right: 0px"><div style="width: 100%">' +
            '<input type="submit" id="submit" onclick="javascript:return loginForm();" class="btn btn-primary login-btn btn-block btn-submit" style="padding-top: 10px; background-color: #15956B; " value="{{ \'login.login\' | translate }}" ng-disabled="disabled">' +
            '</div>' +
            '</div>' +
            '</div>' +
            '</div>' +
            '' +
            '<div class="login-footer">' +
            '<img src="images/HP_Enterprise_Logo.png" style="margin-left: 40px; margin-bottom: 20px; width: 168px; height: 84px" />' +
            '<div class="row" style="color: #B5B5B5; margin-left: 0px; margin-right: 0px">' +
            '<span class="login-footer-copyright1">HPE Helion Managed Cloud</span>' +
            '<span class="login-footer-copyright2">| © 2015 Hewlett Packard Enterprise Development LP</span>' +
            '<span style="float: right; margin-right: 40px; font-family: MetricRegular">' +
            '<a href="http://www8.hp.com/us/en/hpe/legal/terms-of-use" target="_blank">Terms of use</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' +
            '<a href="http://www.hpe.com/us/en/legal/privacy.html" target="_blank">Privacy</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' +
            'Report Bug</span></div>' +
            '' +
            '</div>' +
            '' +
            '</fieldset></form></div><security-banner class="navbar-fixed-bottom"></security-banner>' +
            '' +
            '' +
            ''),


    a.put("views/logout.html", '<security-banner class="navbar-fixed-top"></security-banner><div class="content logout" mpp-busy="tenant$get,theme$get"><div class="container bg-content"><div class="row"><div class="text-center"><img ng-if="tenant.iconUrl" ng-src="{{tenant.iconUrl}}" height="48" alt=""><div ng-if="tenant && !tenant.iconUrl" class="col-xs-12" style="font-size: 6em"><i class="icon-hp text-primary"></i></div></div><hr></div><div class="row text-center"><h1><i class="icon-logout glyph-button text-danger"></i></h1><h3><span class="text-danger">{{ \'logout.message\' | translate}}</span></h3></div><div class="row text-center"><div class="col-xs-4"></div><div class="col-xs-4"><a id="logout-link" ng-click="login()" class="btn btn-primary" role="button" style="width:48%">{{ \'login.title\' | translate }}</a></div><div class="col-xs-4"></div></div><div class="row"><hr></div><div class="row text-center"><div class="col-xs-2"></div><div class="col-xs-8">{{ \'logout.footer\' | translate }}</div><div class="col-xs-2"></div></div></div></div><security-banner class="navbar-fixed-bottom"></security-banner>'), a.put("views/simpleLogout.html", '<div class="content logout" idm-busy="tenant$get,theme$get"><div class="container bg-content"><div class="row"><div class="text-center"><img ng-if="tenant.iconUrl" ng-src="{{tenant.iconUrl}}" height="48" alt=""><div ng-if="tenant && !tenant.iconUrl" class="col-xs-12" style="font-size: 6em"><i class="icon-hp text-primary"></i></div></div><hr></div><div class="row text-center"><h1><i class="icon-logout glyph-button text-danger"></i></h1><h3><span class="text-danger">{{ \'logout.simple.message\' | translate}}</span></h3></div><div class="row"><hr></div><div class="row text-center"><div class="col-xs-2"></div><div class="col-xs-8">{{ \'logout.footer\' | translate }}</div><div class="col-xs-2"></div></div></div></div>'), a.put("views/unavailable.html", '<error-landing header="\'serviceUnavailable.title\' | translate" msg="\'serviceUnavailable.detail\' | translate" action="\'serviceUnavailable.explanation\' | translate" msg-icon="icon-disconnect" msg-alert-class="text-critical"><div class="row"><div class="col-md-4 col-md-offset-4 col-xs-12"><a ng-href="{{link}}" type="button" id="back" class="btn btn-primary btn-block" ng-if="link">{{ \'common.back\' | translate }}</a></div></div></error-landing>')
}]);