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
            sh 'gradle dockerBuild'
            
          },
          "message": {
            echo 'Hello World'
            
          }
        )
      }
    }
  }
}