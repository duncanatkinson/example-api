pipeline {
  agent {
    node {
      label 'gradle'
    }
  }
  triggers {
  	pollSCM('* * * * *')
  }
  stages {
    stage('Build') {
      steps {
        parallel(
          "Build": {
            sh 'gradle clean buildDocker'

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
        echo 'either creating new deployment or replacing existing deployment'
        sh 'kubectl apply -f example-api-deployment.yml'
	sh 'kubectl apply -f example-api-service.yml'
      }
    }
  }
}
