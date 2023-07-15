# eureka-discovery-service
Discovery service for spring boot microservices

# What is client side discovery service
- It is registry where all your microservices intances are running it keeps track of what server is down and what server is up dynamically
that you dont need  manually configure yourself. You can think of as when your microservice starts it is running in port 8080 by default
but what if are scaling your server that you now have 100 instances of your microservice that are running in different ports and the ports
are random configuring it will be a hussle since you dont know what port it will run hence discovery service is the solution it automatically
registers your microservices intances by the time you start it.

# What is Load Balancer
- Suppose you have 100 instances of your microservice are running and you want every request is distributed in different instances to reduce the
load in one instance this is where load balancer will take action it will balance all the load in different servers to handle all the request. Sometimes
it will direct the request in instances no.1 or sometimes in instance no.2 it will check what instance is available to handle the request.

# Relation of Load Balancer and Discovery Service
- Now that we have configure discovery service, lets say you have 100 intances of your microservice is running and registered in your
discovery service. Load Balancer will first check in discovery service registry which instances are down or up and it will balance the load in different instances.

# How to setup discovery service 
- Luckily for you this repo is already a discovery service you will just start this and voila!! that's it you have discovery service

# Register your microservice in discovery service
- Run your discovery service.
- Now open your microservice and add this dependency
```
<dependency>
  <groupId>org.springframework.cloud</groupId>
  <artifactId>spring-cloud-starter-netflix-eureka-client</artifactId>
</dependency>
```
- And also add this in your pom
```
<dependencyManagement>
  <dependencies>
    <dependency>
      <groupId>org.springframework.cloud</groupId>
      <artifactId>spring-cloud-dependencies</artifactId>
      <version>${spring-cloud.version}</version>
      <type>pom</type>
      <scope>import</scope>
    </dependency>
  </dependencies>
</dependencyManagement>
```
- And also add this in your pom properties
```
<spring-cloud.version>2022.0.3</spring-cloud.version> // Remember to check for the updated version
```
- And your pom should look like check the microservice-pom-sample.txt 
- After you add that when you start you microservice it will automatically registered in this discovery service. No additional configuration need after you do this it must work.

# How to run multiple instances of your microservice
- [Check this stackoverflow forum](https://stackoverflow.com/questions/58348457/running-two-spring-boot-instances)
- [Check this youtube video](https://youtu.be/diAwbLSXYTk)
