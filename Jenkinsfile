pipeline {

    agent any
    tools {
        maven 'maven' 
    }
    
    stages {
    
    
        stage('clean and install') {
            steps {
                sh "mvn clean install" 
        	}
  		}

        stage('testing') {
             steps {
                sh "mvn test"
            }
        }
        stage('container remove') {
           steps {
                sh "docker stop docker-hello1 || true && docker rm docker-hello1 || true"
                sh "docker rmi docker-hello1 || true"
           }
        }
        
        
        stage('docker build') {
              steps {
                sh "docker  build -f  Dockerfile  -t docker-hello1 ."
              }
        }
 
    	 stage('docker run') {
          	  steps {                  	
             	docker.image(docker-hello1).run('-p 8081:8081 -h docker-hello1 --name docker-hello1')
             
              }
          }
          
 
  
  }

}