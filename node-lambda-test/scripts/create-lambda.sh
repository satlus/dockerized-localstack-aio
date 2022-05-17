#!/bin/zsh
source ~/.zshrc

laws lambda create-function \
  --function-name l-test \
  --zip-file fileb:///app/index.js.zip \
  --handler index.handler \
  --runtime nodejs14.x \
  --role arn:aws:iam::000000000000:role/localstack-lambda-test