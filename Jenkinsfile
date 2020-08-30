pipeline {
    agent any
    stages {
        stage('build') {
            environment {
                AWESOME_NAME = credentials('0a813731-59be-4dd8-885f-5844fee8d492')
                DOCKER_TXT = credentials('ce487cc0-bb9d-48d0-8779-d90a641509c0')
            }
            steps {
                sh 'printenv'
                sh 'cat $DOCKER_TXT'
                sh 'docker build -t simple-django-on-docker -f Dockerfile .'
                sh 'docker ps -a | grep "jenkins-cfehome" | cut -d " " -f 1 |xargs -I {} docker stop {}'
                sh 'docker run --name jenkins-cfehome -d --rm -p 38086:8000 simple-django-on-docker'
            }
        }
    }
}
