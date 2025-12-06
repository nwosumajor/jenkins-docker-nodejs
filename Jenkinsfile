pipeline {
    agent any

    stages {
        stage('Test Docker Connection') {
            steps {
                echo 'Testing Docker access...'
                sh 'docker --version'
                sh 'docker run hello-world'
            }
        }
        stage('Test GitHub Connection') {
            steps {
                echo 'If you are reading this, Jenkins successfully pulled this Jenkinsfile from GitHub!'
                sh 'ls -la'
            }
        }
    }
}
