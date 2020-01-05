#!/bin/bash

go version

go get github.com/grafana/grafana
cd $GOPATH/src/github.com/grafana/grafana
git checkout tags/v6.3.7

go run build.go setup
go run build.go build

yarn install --pure-lockfile
yarn dev

mkdir -p data/plugins
cd data/plugins
[ -e 'ovh-warp10-datasource' ] && rm -rf 'ovh-warp10-datasource'
git clone https://github.com/ovh/ovh-warp10-datasource.git