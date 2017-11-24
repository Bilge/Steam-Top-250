#!/usr/bin/env bash

cd "$(dirname "$0")"/..

db=../Steam\ importer\ test/db/steam107.sqlite

alg=$1 weight=$2 alias=$3

../Steam\ importer\ test/bin/250 decorate -a $alg -w $weight "$db"
bin/generate generate -a $alg -w $weight "$db" "site/$alg${alias:-$weight}.html"
