pipeline{
	agent any
	
	stages{
		stage('Compile Stage'){
			steps{ 
			 	withMaven(maven:'maven') { 
			 	 'mvn clean compile'
			 	}
			 }
		
		}	
		stage('Testing Stage'){
			steps{ 
			 	withMaven(maven:'maven') { 
			 	 'mvn test'
			 	}
			 }
		
		}
		stage('Run Stage'){
			steps{ 
			 	withMaven(maven:'maven') { 
			 	 'mvn spring-boot:run'
			 	}
			 }
		}
	}

	



}