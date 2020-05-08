#!/usr/bin/env bash
set -e

#additional packages to install

packages="awslogs jq aws-cfn-bootstrap"

sudo yum -y -x docker\* -x ecs\* update

sudo yum -y install $packages
