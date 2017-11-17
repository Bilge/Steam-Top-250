#!/usr/bin/env bash

cd "$(dirname "$0")"/..

set -e

db=../Steam\ importer\ test/db/steam84.sqlite

algos=(
    'wilson	1.96	95'
    'wilson	2.5759	99'
    'wilson	4.4172	99999'
    'bayesian	1'
    'bayesian	50'
    'bayesian	100'
    'bayesian	500'
    'bayesian	1000'
    'bayesian	5000'
    'laplace	1'
    'laplace	500'
    'laplace_log	1'
    'torn	3.3219'
)

for algo in "${algos[@]}"; do
	alg=$(cut -f1 <<<"$algo"); weight=$(cut -f2 <<<"$algo"); alias=$(cut -f3 <<<"$algo")

	../Steam\ importer\ test/bin/250 decorate -a $alg -w $weight "$db"
	bin/generate generate -a $alg -w $weight "$db" "site/$alg${alias:-$weight}.html"
done
