#!/bin/bash
docker build -t cowsay:1.0.35 .

if [ "$1" == "" ] || [ "$2" == "" ]; then
	docker run -it -d -p 4001:3001 --name cowsay cowsay:1.0.35 3001
else
	docker run -it -d -p $1:$2 --name cowsay cowsay:1.0.35 $2
fi
