#!/bin/sh
exec docker run -u 1000:1000 --rm -ti --network=host oasislabs/gsn:latest npx gsn $*
