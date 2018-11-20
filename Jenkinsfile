pipeline {
   agent {label 'linux'}
   stages {
      stage('Linting') {  
         steps {
            withCredentials([usernameColonPassword(credentialsId: '3ea5e776-dcef-4945-92b5-c65772e0603b', variable: '')]) {
               git 'https://github.com/seis665/assignment-10-docker-stah2531.git'
            }
            sh 'flake8 /app/site.py'
         }
      }   
   }
}
