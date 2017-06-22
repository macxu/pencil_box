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

    // var backendServiceIp = process.env['BACKEND_PORT_9900_TCP_ADDR'];
    // if (!backendServiceIp) {
    //     backendServiceIp = 'localhost'
    // }

    var requestUrl = 'http://' + "api" + ':9900/api/models/' + modelName;
    console.log("request url: " + requestUrl);
    request(requestUrl, function (error, response, body) {
        res.json(body);
    });
});


module.exports = router;
