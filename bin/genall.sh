#!/usr/bin/env bash

cd "$(dirname "$0")"/..

set -e

algos=(
    'wilson	2.5759	99'
    'wilson	6.1094	999999999'
    'bayesian	1'
    'bayesian	50'
    'bayesian	100'
    'bayesian	500'
    'bayesian	1000'
    'laplace	100'
    'laplace	300'
    'laplace	500'
    'laplace_log	.25'
    'laplace_log	1'
    'laplace_log	5'
    'dirichlet_prior	500'
    'dirichlet_prior	1000'
    'dirichlet_prior	5000'
    'dirichlet_prior_log	1'
    'dirichlet_prior_log	5'
    'dirichlet_prior_log	10'
    'torn	2'
    'torn	3.3219	natural'
    'torn	5'
)

for algo in "${algos[@]}"; do
	bin/genfull.sh $(cut -f1 <<<"$algo") $(cut -f2 <<<"$algo") $(cut -f3 <<<"$algo")
done
