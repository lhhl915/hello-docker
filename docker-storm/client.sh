#!/bin/sh
docker run -i -t --link stormdocker_nimbus_1:nimbus  -p 22 gree2/storm /bin/bash
