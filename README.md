# Getting Dockerized LocalStack Up and Running
We want to test aws services quickly without incurring costs and futzing with the console. [LocalStack to the rescue](https://localhost.cloud)

We also want the localstack environment to be fully dockerized so we don't pollute the development environment. We use localstack via docker-compose to do this

## Prequisites
* Docker is installed and docker-compose is working
* aws cli is installed


## Steps
Tested on OSX 12.3.1 with Docker Desktop 4.8.1

1. create an external network that both the aws-cli and localstack containers will share: 
`docker network create localstack`
1. Ensure the aws-cli command is installed locally, and
1. alias the docker aws/cli docker image [per the docs](https://docs.localstack.cloud/integrations/aws-cli/#aws-cli-v2-with-docker-and-localstack) 
1. run `docker-compose up` via [compose file here](./docker-compose.yml)

# Pitfalls

* Don't use the 'cockpit' app to run docker locally - it's easier to configure the 

## OSX specific stuff
(Note that on MacOS you may have to run TMPDIR=/private$TMPDIR docker-compose up if $TMPDIR contains a symbolic link that cannot be mounted by Docker.)

