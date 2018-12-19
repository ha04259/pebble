
pipeline {
   agent any
    
   stages {
      stage('Say Hello') {
         steps {
            echo 'Hello World!'   
         }
      }
   stage('Deploy') {
        options {
          timeout(time: 1, unit: 'MINUTES')
        }
        input {
          message "Should we continue?"
        }
        steps {
          echo "Continuing with deployment"
        }
        post {
          aborted {
            echo 'Why didn\'t you push my button?'
          }
        }
      }
   }
}
