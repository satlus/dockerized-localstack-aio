#!/bin/bash
source ~/.zshrc
laws iam create-role --role-name localstack-lambda-test --assume-role-policy-document /app/lambda-trust-policy.json
