#!/bin/bash

cd /usr/src/app/ && npm run static-serve 

exec "$@"
