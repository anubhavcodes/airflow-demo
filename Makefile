.PHONY: run build

build:
	docker build -t airflow-demo:0.1 .

run: build
	docker run -d -p 8080:8080 airflow-demo:0.1
	@echo airflow running on https://localhost:8080/admin

kill: 
	@echo "Killing docker-airflow containers"
	docker kill $(shell docker ps -q --filter ancestor=airflow-demo:0.1) 

tty:
	docker exec -i -t $(shell docker ps -q --filter ancestor=airflow-demo:0.1) /bin/bash