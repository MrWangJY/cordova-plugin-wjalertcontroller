var exec = require('cordova/exec');

exports.alerMethod = function (arg0,msg, success, error) {
    exec(success, error, 'WJAlertController', 'alerMethod', [arg0,msg]);
};
