#!/bin/bash

cd src &&
help2man -n "toggle python virtual environment" -N -o tenv.1 ./tenv
exit ${?}
