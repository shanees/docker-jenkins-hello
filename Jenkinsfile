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
        
 	   
  }

}