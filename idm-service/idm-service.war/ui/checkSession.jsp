<!DOCTYPE html>
<html>
<head>
    <base href="${pageContext.request.contextPath}/idm/v0/">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <title>Check Session IFrame</title>
</head>
<body>
  <script id="opbs-storage-prefix" type="application/json">${pageContext.request.contextPath}</script>

  <script src="scripts/f4496b65.obps.js"></script>

  <script>

    function getOpBrowserState() {
      return opbs.get();
    }

    function calculateSessionStateResult(origin, clientSessionState) {
        try {
            if (!origin || !clientSessionState) {
                return "error";
            }

            return IdMSessionState.compare(origin, getOpBrowserState(), clientSessionState) ? "unchanged" : "changed";
        }
        catch(e) {
            return "error";
        }
    }

    var storagePrefix = document.getElementById("opbs-storage-prefix").textContent.trim();

    opbs.prefix(storagePrefix);
    
    // sync up state
    var state = '<%= request.getAttribute("opbs") %>';
    if (state !== getOpBrowserState()) {
        opbs.set(state);
    }

    // only listen if this is iframed
    if (window.parent !== window) {
      window.addEventListener("message", function checkSession(e) {
        var referrer = document.referrer;
        var parentOrigin = referrer.match(/(http.*\/\/.+?)\//)[1];

        var result = calculateSessionStateResult(e.origin, e.data);

        // verify message came from parent and parent has not changed, BEFORE
        // sending a response (but after calculating it)
        if (parentOrigin !== e.origin) {
          return;
        }

        e.source.postMessage(result, e.origin);
      }, false);
    }
  </script>
</body>
</html>