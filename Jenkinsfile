pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'docker build -t simple-django-on-docker -f Dockerfile .'
                sh './stop.sh'
                sh 'docker run --name jenkins-cfehome --rm -it -p 38086:8000 simple-django-on-docker'
            }
        }
    }
}
