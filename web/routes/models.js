var express = require('express');
var router = express.Router();
var request = require('request');
var process = require('process');

router.get('/:name?', function(req, res, next) {

    console.log("Received request from UI");
    var modelName = req.params.name;

    if (!modelName) {
        modelName = "";
    }

    var backendServiceIp = process.env['API_SERVER'];
    if (!backendServiceIp) {
        backendServiceIp = 'localhost'
    }

    var backendServicePort = process.env['API_SERVER_PORT'];
    if (!backendServicePort) {
        backendServicePort = '9900'
    }

    var requestUrl = 'http://' + backendServiceIp + ':' + backendServicePort + '/api/models/' + modelName;
    console.log("request url: " + requestUrl);
    request(requestUrl, function (error, response, body) {
        res.json(body);
    });
});


module.exports = router;
