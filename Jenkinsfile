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



    
  
  }

}