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
                withAWS(credentials: 'terraform_cloud_user', region: 'us-east-1') {
                    sh 'echo "hello Jenkins">hello.txt'
                    sh 'bash terraformw apply -auto-approve -no-color'
                }
            }
    }
  }
  post {
    always {
      cleanWs()
    }
  }
}
