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
                    def webserver = docker.image('php:7.4-apache')
                    webserver.pull() // Getting the latest available from Docker Hub
                    webserver.build("webserver", "./php/Dockerfile")  {
                        echo 'Building docker image for use'
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