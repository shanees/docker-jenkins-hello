pipeline {

    agent any
    tools {
        maven 'maven' 
    }
    
    stages {
    
    
        stage('Compile stage') {
            steps {
                sh "mvn clean compile" 
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



    
  
  }

}