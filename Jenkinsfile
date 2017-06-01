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
            sh 'gradle dockerBuild'
            
          },
          "message": {
            echo 'Hello World'
            
          },
          "echo path": {
            sh 'echo $PATH'
            
          },
          "list available tasks": {
            sh 'gradle tasks -a'
            
          }
        )
      }
    }
  }
}