# We must bind mount the aws config and provide a pre-configured profile
# We also must bind mount $PWD to a path in the container to work with files. e.g. laws s3 cp /app/somefile.txt s3://your-bucket
alias laws='docker run --network localstack --rm -it -v ~/.aws:/root/.aws -e AWS-PROFILE amazon/aws-cli --endpoint-url=http://localstack:4566'