#!/bin/zsh
source ~/.zshrc

laws lambda invoke \
  --function-name l-test out \
  --log-type Tail \
  --query 'LogResult'
