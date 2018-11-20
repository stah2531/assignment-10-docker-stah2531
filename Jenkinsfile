pipeline {
   agent {label 'linux'}
   stages {
      stage('Linting') {  
         steps {
            git 'https://github.com/seis665/assignment-10-docker-stah2531.git'
            sh 'flake8 /app/site.py'
         }
      }   
   }
}
