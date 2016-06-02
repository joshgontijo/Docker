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
	
### Container stats
	docker stats ${nameOrID}
	
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

      
### Proxy config (docker build)
*Since the build is run from another container, the value should be set manually, without variables*
	ENV http_proxy=THE_PROXY
	ENV https_proxy=THE_PROXY

	docker pull imagename --
	