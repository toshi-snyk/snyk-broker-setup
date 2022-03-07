#!/bin/sh

# https://github.com/snyk/broker/blob/master/README.md
# for github-com
# # $GITHUB_COM_BROKER_TOKEN
# # $GITHUB_COM_TOKEN

#echo BROKER_TOKEN: $GITHUB_COM_BROKER_TOKEN
#echo GITHUB_TOKEN: $GITHUB_COM_TOKEN

docker run --restart=always \
           -p 8000:8000 \
           -e BROKER_TOKEN=$GITHUB_COM_BROKER_TOKEN \
           -e GITHUB_TOKEN=$GITHUB_COM_TOKEN \
           -e PORT=8000 \
           -e BROKER_CLIENT_URL=http://my.broker.client:8000 \
       snyk/broker:github-com
