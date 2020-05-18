pipeline{
	agent any
	
	stages{
		
		stage('Run Stage'){
			steps{ 
			 	withMaven(maven:'maven') { 
			 	 sh 'mvn spring-boot:run'
			 	}
			 }
		
		}
	
	
	}

	



}