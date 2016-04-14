### Stop all containers
	docker stop $(docker ps -a -q)

### Delete all containers
	docker rm $(docker ps -a -q)

### Delete all images
	docker rmi -f $(docker images -q)

### Docker build
	docker build -t josueeduardo/{NAME} .
	
### Enter container
	docker exec -it ${nameOrID} bash
	
### Inspect container
	docker inspect ${nameOrID}
	
### Container history
	docker history ${nameOrID}
	
### Check logs
	docker logs ${ID} 

### Mysql
	docker run -d -P --name mysqltest josueeduardo/mysql-test
	docker run --name -v /my/custom:/etc/mysql/conf.d -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:tag

	
### Wildfly
	docker run -d -p 8080:8080 --name INSTANCE_NAME josueeduardo/wildfly
	docker run -d -p 8080:8080 -p 9990:9990 --name INSTANCE_NAME josueeduardo/wildfly -c standalone-ha.xml -bmanagement 0.0.0.0

      