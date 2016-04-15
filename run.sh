#!/bin/bash

docker build -t ironic_webclient .
docker run -i -t -p 127.0.0.1:8000:8000 -v $(pwd)/build:/build  ironic_webclient $@
