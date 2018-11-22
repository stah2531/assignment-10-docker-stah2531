pipeline {
   agent {label 'linux'}
   stages {
      stage('Linting') {  
         steps {
            git credentialsId: '6247778b-2e42-4bf8-8ceb-4d8903cc614f', url: 'https://github.com/seis665/assignment-10-docker-stah2531'
            sh 'pwd'
            sh 'ls'
            sh 'flake8 app/site.py'
         }
      }
      stage('Build') {   
         steps {
            sh 'docker build -t classweb:${BUILD_NUMBER} .'
         }
      }
   }
}
