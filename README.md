# elastalert
Setting up elastalert on docker || Python 3.6 || Dockerfile

## Installation

Had been seeing a lot of error reporting on elastalert compatibilty in ubuntu 14, ubuntu16 and systems based with python v2.x 

Steps:
clone this repo : git clone https://github.com/Yelp/elastalert-docker.git

## Usage

inside on ./config.yml
change these 2 parameters to the desired setting.

- es_host:
- es_port:

```
es_host is the address of an Elasticsearch cluster where ElastAlert will store data about its state, queries run, alerts, and errors. Each rule may also use a different Elasticsearch host to query against.

es_port is the port corresponding to es_host.
```
##
COMMANDS:
```
docker build -t elastalert-docker 
docker run -it elastalert-docker
```
## 

and we're good to go. The elastalert container connects to the desired port and IP on the host machine.
elastalert config yaml's are in ./elastalert-docker/example_rules.
./elastalert-docker/example_rules/example_frequency.yaml is a slack integration example.

bash shell can be achieved anytime via:
``` 
docker exec -it $container_id bash
```

## Author Info 
prateerickaien@gmail.com || report for bugs


