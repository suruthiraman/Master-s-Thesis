const express = require("express");

const app = express();

var bodyParser = require('body-parser')
app.use( bodyParser.json() );

const router = express.Router();

router.get('/ping', function (req, res) {
res.json({'Hello' : 'from Service 1!'});
res.end();
return ;
});

router.post('/service', function (req, res) {
processPost(req, res);
});

app.use( '/api/v1', router );
var port = process.env.PORT || 8011;

var server = app.listen(port, function(){
console.log('Server running on port ' + port);
});
 

function processPost(req, res) {
    try{
        var payloadBody = req.body;

        res.json(payloadBody);
    } catch  (err) {
      console.log('Error processing the POST request: ' + err);
    }}
