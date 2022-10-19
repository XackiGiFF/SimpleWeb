pipeline {
    agent any
    stages {
        stage('Initial') {
            steps {
                git url: 'https://github.com/XackiGiFF/SimpleWeb.git', branch: 'feature/dev'
            }
        }
        stage('Build'){
            steps {
                echo 'Build'
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