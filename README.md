# LocalStack Docker AIO (All in One)
We want to test core aws services quickly without incurring costs and futzing with the console. [LocalStack to the rescue](https://localhost.cloud)

We also want the localstack environment to be fully dockerized so we don't pollute the host devenv. We use docker-compose to run localstack and the aws-cli docker image to do this

This repo contains everything to get you up and running with localstack on doicker quickly, including sample AWS projects.

## Prequisites
* Docker is installed and docker-compose is working
* aws cli is installed


## Setup
Tested on OSX x86 12.3.1 with Docker Desktop 4.8.1

1. create an external network that both the aws-cli and localstack containers will share: 
`docker network create localstack`
1. Ensure the aws-cli command is installed locally, and
1. alias the docker aws/cli docker image [per the docs](https://docs.localstack.cloud/integrations/aws-cli/#aws-cli-v2-with-docker-and-localstack). Ensure we bind mount the local aws client root dir 
1. run `docker-compose up` via [compose file here](./docker-compose.yml)
1. 

## Gotchyas

* Don't use the 'cockpit' app to run docker locally - it's easier to use the compose file because you can customize things
* In order to use the dockerized aws-cli you must bind mount both the aws config(`~./aws/root/.aws1`) $PWD, and use a prefix when execute commands e.g. `(laws lambda --file-zip fileb:///app/file.zip)`. The prefix here is 'app', we have to escape it (three slashes) - yuck. This is counterintuitive, it may just be better to alias --endpoint-url using client on the host
* node16.x doesn't seem to work when creating lambda functions (it is supported on AWS). Node14.x does
* 
## OSX specific stuff
(Note that on MacOS you may have to run TMPDIR=/private$TMPDIR docker-compose up if $TMPDIR contains a symbolic link that cannot be mounted by Docker.)

## TODOs
- [ ] automate setup
- [x] s3 working
- [x] lambda working
- [x] cloud formation working
- [ ] dynamo db working
- [ ] sqs working
- [ ] cloudfront working
- [ ] simple e2e app working
- [ ] debugging lambdas working122



