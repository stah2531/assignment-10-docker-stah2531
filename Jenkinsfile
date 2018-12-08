pipeline {
   agent {label 'linux'}
   stages {
      stage('Linting') {  
         steps {
            sh 'flake8 app/site.py'
         }
      }
   }
}
