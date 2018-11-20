pipeline {
   agent {label 'linux'}
   stages {
      stage('Linting') {  
         steps { 
            flake8 https://github.com/seis665/assignment-10-docker-stah2531/app/
         }
      }   
      stage('Build') {   
         steps {  
         }
      }   
      stage('Test') {    
         steps {
         }
      }
      stage('CleanUp') {
         steps {
         }
      }
   }
}
