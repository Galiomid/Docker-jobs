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
        stage('build docker images') {
            steps {
             sh 'sudo docker build -t nigieu/geraldine:$(BUILD_NUMBER) .'
             sh 'sudo docker login -u nigieu -p watidocker'
            }    
        }
    }
}
