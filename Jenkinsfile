pipeline {
   agent {label 'linux'}
   stages {
      stage('Linting') {  
         steps {
            flake8 https://github.com/seis665/assignment-10-docker-stah2531/app/site.py
         }
      }   
   }
}
