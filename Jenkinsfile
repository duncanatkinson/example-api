pipeline {
  agent {
    node {
      label 'gradle'
    }
    
  }
  stages {
    stage('Build') {
      steps {
        parallel(
          "Build": {
            sh 'echo $PATH'
            sh 'gradle tasks'
            
          },
          "message": {
            echo 'Hello World'
            
          }
        )
      }
    }
  }
}