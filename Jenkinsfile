def workspace
def webserver = docker.image('7.4-apache')
node {
    workspace = env.WORKSPACE
}
pipeline {
    agent any
    stages {
        stage('Build'){
                echo 'Build started...'
                webserver.pull() // Getting the latest available from Docker Hub
                webserver.inside('-v $WORKSPACE:$WORKSPACE') {
                    echo 'Install libs in Docker container'
                    sh ('php/build.sh')
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