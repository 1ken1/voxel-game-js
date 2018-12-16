start: ./bundles/server.js
	node ./bundles/server.js

build: ./bundles/server.js

./bundles/server.js: ./src/*.js ./src/server/*.js
	rollup ./src/server/main.js --file ./bundles/server.js --format iife --name server

install:
	npm i ws
	npm i colors

backup:
	cp -a ./chunks ./backups/`date +'%Y-%m-%d-%H-%M-%S'`

.PHONY: start install build backup
