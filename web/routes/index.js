var express = require('express');
var router = express.Router();
var path = require('path');

/* GET home page. */
router.get('/', function(req, res, next) {
  // res.render('index', { title: 'Express' });

  var htmlFile = path.join(__dirname + '/../public/pages/getModel.html');
  res.sendFile(htmlFile);

});


module.exports = router;
