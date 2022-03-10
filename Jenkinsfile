pipeline {
  agent {
    node { label '' }
  }
  stages{
    stage('clean workspace') {
      steps {
        cleanWs()
      }
    }
    stage('checkout') {
      steps {
        checkout scm
      }
    }
    stage('terraform') {
      steps {
        export "ACCESS_KEY=${env.ACCESS_KEY}"
        export "SECRET_KEY=${env.SECRET_KEY}"
        sh 'bash terraformw apply -auto-approve -no-color'
      }
    }
  }
  post {
    always {
      cleanWs()
    }
  }
}
