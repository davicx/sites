require('dotenv').config()
const express = require('express')
const S3 = require('aws-sdk/clients/s3')
const fs = require('fs') 
const bucketName = process.env.AWS_BUCKET_NAME
const region = process.env.AWS_BUCKET_REGION
const accessKeyId = process.env.AWS_ACCESS_KEY
const secretAccessKey = process.env.AWS_SECRET_KEY
const uploadRouter = express.Router();
const postFunctions = require('../../functions/postFunctions')
//const { uploadFile, getFileStream } = require('../../functions/s3')
const cors = require('cors');
const multer  = require('multer')
uploadRouter.use(cors())

const s3 = new S3({ region, accessKeyId, secretAccessKey })

//Upload
function uploadFile(file) {
    const fileStream = fs.createReadStream(file.path)
  
    const uploadParams = {
      Bucket: bucketName,
      Body: fileStream,
      Key: file.filename
    }
  
    return s3.upload(uploadParams).promise()
}

exports.uploadFile = uploadFile
  
//Download 
function getFileStream(fileKey) {
    const downloadParams = {
      Key: fileKey,
      Bucket: bucketName
    }
  
    return s3.getObject(downloadParams).createReadStream()
}

fileFilter = (req, file, cb) => {
    if(file.mimetype === 'image/jpeg' || file.mimetype === 'image/png') {
        cb(null, true);
    } else {
        cb(null, false);
    } 
}

const storage = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, 'C:/wamp/www/sites/api/uploads')
    },
    filename: function (req, file, cb) {
      cb(null, Date.now() + file.originalname) 
    }
})

const upload = multer({
    storage: storage,
    limits: { fileSize: 1024 * 1024 * 20},
    fileFilter: fileFilter
})

//UPLOAD PHOTO: Local
uploadRouter.post('/upload/photo/class', upload.single('postImage'), (req, res) => {
    const file = req.file
    if(file !== undefined) {
        console.log(file);
        postFunctions.postPhoto(req, res, file);
    } else {
        res.json({postType:'please choose an image file'});
    }
    
})

//UPLOAD PHOTO: AWS
uploadRouter.post('/upload/photo/aws/class', upload.single('postImage'), async (req, res) => {
    const file = req.file
    if(file !== undefined) {
        //postFunctions.postPhoto(req, res, file);
        const result = await uploadFile(file);
        console.log(file)        
        console.log(result)        
        res.json({file: file, imagePath: `/post/image/${result.Key}`});
    } else {
        res.json({postType:'please choose an image file'});
    }
})

//http://localhost:3003/post/image/1635895419660hiya.jpg
uploadRouter.get('/post/image/:key', (req, res) => {
  console.log(req.params)
  const key = req.params.key
  const readStream = getFileStream(key)

  readStream.pipe(res)
})


module.exports = uploadRouter;


/*
{
  fieldname: 'postImage',
  originalname: 'hiya.jpg',
  encoding: '7bit',
  mimetype: 'image/jpeg',
  destination: 'C:/wamp/www/sites/api/uploads',
  filename: '1635896393797hiya.jpg',
  path: 'C:\\wamp\\www\\sites\\api\\uploads\\1635896393797hiya.jpg',
  size: 182337
}
{
  ETag: '"72653cbde20adeab37c6bcb570226a08"',
  Location: 'https://kite-post-photo-upload.s3.us-west-2.amazonaws.com/1635896393797hiya.jpg',
  key: '1635896393797hiya.jpg',
  Key: '1635896393797hiya.jpg',
  Bucket: 'kite-post-photo-upload'
}


*/
