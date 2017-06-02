pipeline {
  agent {
    node {
      label 'gradle'
    }
  }
  triggers {
  	pollSCM('H/5 H(7-19) * * *')
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
        parallel(
          "Test": {
            sh 'gradle test'

          },
          "Manual Checks": {
            input(message: 'Please perform a manual check', id: 'manualCheck', ok: 'looks pretty sweet', submitter: 'duncan')

          }
        )
      }
    }
    stage('deploy') {
      steps {
        kubectl replace -f deployment.yml
      }
    }
  }
}