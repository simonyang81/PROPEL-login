/**
 * Created by Simon on 10/23/15.
 */
//function getCookie(name) {
//    var arr = document.cookie.split('; ');
//    for (var i = 0; i < arr.length; i++) {
//        var temp = arr[i].split('=');
//        if (temp[0] == name) {
//            return temp[1];
//        }
//    }
//    return '';
//}
//
//function removeCookie(name) {
//    var d = new Date();
//    d.setTime(d.getTime() - 10000);
//    document.cookie = name + '=1; expires=' + d.toGMTString();
//}
//
//function setCookie(name, value, hours) {
//    var d = new Date();
//    d.setTime(d.getTime() + hours * 3600 * 1000);
//    document.cookie = name + '=' + value + '; expires=' + d.toGMTString();
//}

function setCookie(name, value, hours, path) {
    var name = escape(name);
    var value = escape(value);
    var expires = new Date();
    expires.setTime(expires.getTime() + hours * 3600000);
    path = path == "" ? "" : ";path=" + path;
    _expires = (typeof hours) == "string" ? "" : ";expires=" + expires.toUTCString();
    document.cookie = name + "=" + value + _expires + path;
}

function removeCookie(name, path) {
    var name = escape(name);
    var expires = new Date(0);
    path = path == "" ? "" : ";path=" + path;
    document.cookie = name + "=" + ";expires=" + expires.toUTCString() + path;
}

var checkedRemember = true;

function checkRemember() {
    checkedRemember = !checkedRemember;
}

function loginForm() {

    if ($('#username').val() == '') {
        return true;
    }

    if (checkedRemember) {
        setCookie('username', $('#username').val(), 30, '/');
    } else {
        removeCookie('username', '/');
    }

    return true;
}
