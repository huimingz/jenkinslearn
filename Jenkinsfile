pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'docker ps -a'
                sh 'docker-compose version'
            }
        }
    }
}
