pipeline {
   agent {label 'linux'}
   stages {
      stage('Linting') {  
         steps {
            git credentialsId: '6247778b-2e42-4bf8-8ceb-4d8903cc614f', url: 'https://github.com/seis665/assignment-10-docker-stah2531'
            sh 'flake8 app/site.py'
         }
      }
      stage('Build') {   
         steps {
            sh 'docker build -t classweb:${BUILD_NUMBER} .'
         }
      }
      stage('Test') {
         steps {
            sh 'docker run -d -p 80:8080 --name classweb1 classweb:$(BUILD_NUMBER}'
            sh 'curl $(curl 169.254.169.254/latest/meta-data/local-ipv4) | grep "super"'
         }
      }
   }
}
