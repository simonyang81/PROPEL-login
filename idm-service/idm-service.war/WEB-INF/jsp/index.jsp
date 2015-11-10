<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
  <head>
    <base href="${pageContext.request.contextPath}/idm/v0/">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">
    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">

    <link id="styleLink" rel="stylesheet" href="bower_components/mpp-theme/dist/main.css">

    <link rel="stylesheet" type="text/css" href="css/login.css">
    <link href="css/mui-switch.css" rel="stylesheet">


</head>
  <body ng-app="idmUiApp" class="bg-body" org-theme-dir="" org-theme-html-lang="">
  <script id="opbs-storage-prefix" type="application/json">${pageContext.request.contextPath}</script>

  <!-- Framebusting logic. See: http://seclab.stanford.edu/websec/framebusting/framebust.pdf -->
  <style>
      body {
          display: none;
      }
  </style>
  <script>
      if (self == top) {
          document.getElementsByTagName("body")[0].style.display = 'block';
      } else {
          top.location = self.location;
      }
  </script>

  <script>
      /**
       * Rewrite base.href to be an absolute URL. Only necessary for IE 9, but works fine in other browsers.
       */
      function toAbsURL(s) {
          var l = location,
                  h, p, f, i;
          if (/^\w+:/.test(s)) {
              return s;
          }
          h = l.protocol + '//' + l.host + (l.port != '' ? (':' + l.port) : '');
          if (s.indexOf('/') == 0) {
              return h + s;
          }
          p = l.pathname.replace(/\/[^\/]*$/, '');
          f = s.match(/\.\.\//g);
          if (f) {
              s = s.substring(f.length * 3);
              for (i = f.length;;) {
                  i =
                          p = p.substring(0, p.lastIndexOf('/'));
              }
          }
          return h + p + '/' + s;
      }

      var base = document.getElementsByTagName('base')[0];
      base.href = toAbsURL(base.href);
  </script>

    <!--[if lt IE 9]>
      <script src="bower_components/es5-shim/es5-shim.min.js"></script>
      <script src="bower_components/json3/lib/json3.min.js"></script>
    <![endif]-->

    <%--<div class="ui-view-root-container full-height">--%>
    <div ng-view="" class="full-height"></div>
    <%--</div>--%>

    <script src="bower_components/jquery/dist/jquery.js"></script>
    <script src="bower_components/angular/angular.min.js"></script>
    <script src="bower_components/sugar/release/sugar-full.min.js"></script>

    <script src="scripts/63be8cde.plugins.js"></script>

    <script src="scripts/f93c65de.modules.js"></script>

    <script src="scripts/ce181b76.scripts.js"></script>

    <script src="scripts/a3fdef95.templates.js"></script>

    <script src="scripts/login.js"></script>

</body>
</html>