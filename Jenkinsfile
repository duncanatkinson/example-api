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
            sh 'gradle buildDocker'
            
          },
          "message": {
            echo 'Hello World'
            
          },
          "echo path": {
            sh 'echo $PATH'
            
          },
          "list available tasks": {
            sh 'gradle tasks --all'
            
          }
        )
      }
    }
    stage('Test') {
      steps {
        sh 'gradle test'
      }
    }
    stage('Manual Checks') {
      steps {
        input(message: 'Please confirm that it all looks good', ok: 'Looks good', submitter: 'duncan')
      }
    }
    stage('deploy') {
      steps {
        echo 'do deployment'
      }
    }
  }
}