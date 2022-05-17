const { AWS, S3 } = require('aws-sdk');

AWS.config.getCredentials((err) => {
  if (err) console.log(err.stack);
  else {
    console.log("access key:", AWS.config.credentials.accessKeyId);
  }
});

AWS.config.update({region: 'us-east-1'});

//Create S3 service obj
let s3 = new AWS.S3({apiVersion: '2006-03-01', endpoint: 'http://localhost:4566'});
s3.listBuckets((err, data)=>{
  if (err) {
    console.log("Error", err);
  } else {
    console.log("Success", data.Buckets);
  }
});

//