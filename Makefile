build:
	docker build -t theskyinflames/dockerized-proxy .

clear:
	docker rmi theskyinflames/dockerized-proxy

start:
	docker-compose -f ./docker-compose.yml up -d

stop:
	docker rm -f dockerproxy_proxy_1
