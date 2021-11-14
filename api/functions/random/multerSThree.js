var express = require('express'),
    aws = require('aws-sdk'),
    bodyParser = require('body-parser'),
    multer = require('multer'),
    multerS3 = require('multer-s3');

aws.config.update({
    secretAccessKey: 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    accessKeyId: 'XXXXXXXXXXXXXXX',
    region: 'us-east-1'
});

var app = express(),
 s3 = new aws.S3();

app.use(bodyParser.json());

var upload = multer({
    storage: multerS3({
        s3: s3,
        bucket: 'bucket-name',
        key: function (req, file, cb) {
            console.log(file);
            cb(null, file.originalname); //use Date.now() for unique file keys
        }
    })
});

//open in browser to see upload form
app.get('/', function (req, res) {
    res.sendFile(__dirname + '/index.html');//index.html is inside node-cheat
});

//use by upload form
app.post('/upload', upload.array('upl',1), function (req, res, next) {
    res.send("Uploaded!");
});

app.listen(3000, function () {
    console.log('Example app listening on port 3000!');
});


/*
AWS.config.loadFromPath("path-to-credentials.json");
var s3 = new AWS.S3();

var cloudStorage = multerS3({
    s3: s3,
    bucket: "sample_bucket_name",
    contentType: multerS3.AUTO_CONTENT_TYPE,
    metadata: function(request, file, ab_callback) {
        ab_callback(null, {fieldname: file.fieldname});
    },
    key: function(request, file, ab_callback) {
        var newFileName = Date.now() + "-" + file.originalname;
        ab_callback(null, newFileName);
    },
});
var upload = multer({
    storage: cloudStorage
});

router.post("/upload", upload.single('myFeildName'), function(request, response) {
    var file = request.file;
    console.log(request.file);
    response.send("aatman is awesome!");
});
*/