def workspace
node {
    workspace = env.WORKSPACE
}
pipeline {
    agent any
    stages {
        stage('Build'){
            steps {
                echo 'Build started...'
                script {
                    def webserver = docker.image('7.4-apache')
                    webserver.pull() // Getting the latest available from Docker Hub
                    webserver.inside('-v $WORKSPACE:$WORKSPACE') {
                        echo 'Install libs in Docker container'
                        sh ('')
                    }
                }
            }
        }
        stage('Test'){
            steps {
                echo 'Test'
            }
        }
        stage('Deploy'){
            steps {
                echo 'Deploy'
            }
        }
    }
}