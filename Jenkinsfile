pipeline {
   agent {label 'linux'}
   stages {
      stage('Linting') {  
         steps { 
            sh 'sudo apt install flake8'
            sh 'flake8 https://github.com/seis665/assignment-10-docker-stah2531/app/site.py'
         }
      }   
   }
}
