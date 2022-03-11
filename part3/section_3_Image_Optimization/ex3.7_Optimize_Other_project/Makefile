start: 
	docker build . -t spring
	docker run -p 8080:8080 spring

clean: 
	docker container prune
	docker rmi spring