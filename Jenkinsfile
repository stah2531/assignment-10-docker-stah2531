pipeline {
   agent {label 'linux'}
   stages {
      stage('Linting') {  
         steps {
            flake8 app/site.py
         }
      }   
   }
}
