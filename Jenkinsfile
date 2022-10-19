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
                    def webserver = docker
                    webserver.build("web-server:${env.BUILD_ID}", "./php/Dockerfile")
                    webserver.inside() {
                        echo 'service apache2 status'
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