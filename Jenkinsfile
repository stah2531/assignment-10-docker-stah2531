pipeline {
   agent {label 'linux'}
   stages {
      stage('Linting') {  
         steps {
            git 'https://github.com/seis665/assignment-10-docker-stah2531.git'
            flake8 /app/site.py
         }
      }   
   }
}
