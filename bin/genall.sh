#!/usr/bin/env bash

cd "$(dirname "$0")"/..

db=../Steam\ importer\ test/db/steam80.sqlite

bin/generate generate -a wilson "$db" site/wilson1.html
bin/generate generate -a bayesian -w 1 "$db" site/bayesian1.html
bin/generate generate -a bayesian -w 10 "$db" site/bayesian10.html
bin/generate generate -a bayesian -w 50 "$db" site/bayesian50.html
bin/generate generate -a bayesian -w 100 "$db" site/bayesian100.html
bin/generate generate -a bayesian -w 500 "$db" site/bayesian500.html
bin/generate generate -a bayesian -w 1000 "$db" site/bayesian1000.html
bin/generate generate -a bayesian -w 5000 "$db" site/bayesian5000.html
bin/generate generate -a laplace -w 1 "$db" site/laplace1.html
bin/generate generate -a laplace -w 500 "$db" site/laplace500.html
bin/generate generate -a laplace_log -w 1 "$db" site/laplace_log1.html
bin/generate generate -a torn -w 1 "$db" site/torn1.html
