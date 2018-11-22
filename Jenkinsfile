pipeline {
   agent {label 'linux'}
   stages {
      stage('Linting') {  
         steps {
            git credentialsId: '8c4f7383-a103-4f59-8397-13804a0dc72a', url: 'https://github.com/seis665/assignment-10-docker-stah2531/'
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
            sh 'docker run -d -p 80:8080 --name classweb classweb:${BUILD_NUMBER}'
            sh 'curl $(curl 169.254.169.254/latest/meta-data/local-ipv4) | grep "super"'
         }
      }
   }
   post {
      always {
         sh '''if [ "$(docker ps -q --filter name=classweb)" ]; 
               then 
                  docker stop classweb && docker rm classweb
               fi'''
      }
   }
}
