pipeline {
    agent any

    stages {
        stage('cleaning environment') {
            steps {
                echo 'Hello World'
            sh 'A=$(sudo docker images -aq) || true'
            sh 'sudo docker rm -f $(sudo docker ps -aq) || true'
            sh 'sudo docker rmi -f $A || true'
           }
        }
        stage('docker build') {
            steps {
            sh 'docker build -t nigieu/geraldine:001 .'
           }
        }
    }
}
