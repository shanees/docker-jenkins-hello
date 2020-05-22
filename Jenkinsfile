pipeline {

    agent any
    tools {
        maven 'maven' 
    }
    
    stages {
    
    
        stage('clean and install stage') {
            steps {
                sh "mvn clean install" 
        	}
  		}

        stage('testing stage') {
             steps {
                sh "mvn test"
            }
        }
        
        stage('docker build') {
              steps {
                sh "docker  build -f  Dockerfile  -t docker-hello1 ."
              }
        }
        
    	 stage('docker run') {
          	  steps {
                sh "docker run -p 8081:8081 docker-hello1"
              }
          }



    
  
  }

}