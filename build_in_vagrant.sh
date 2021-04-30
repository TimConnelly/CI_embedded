#!/usr/bin/env bash


## Build with SEgger embedded studio
export PROJ_FILE=/vagrant/ci_test.emProject
sudo -E /opt/ses/bin/emBuild -config "Release" -project "ci_test" ${PROJ_FILE}
