pipeline {
   agent {label 'linux'}
   stages {
      stage('Linting') {  
         steps {
            git credentialsId: '3ea5e776-dcef-4945-92b5-c65772e0603b', url: 'https://github.com/seis665/assignment-10-docker-stah2531/'
            sh 'flake8 app/site.py'
         }
      }
      stage('Build') {   
         steps {
              
         }
      }
   }
}
