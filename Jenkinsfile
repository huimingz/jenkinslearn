pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'docker ps -a'
                sh 'tree -L 2 /'
            }
        }
    }
}
