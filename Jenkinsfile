pipeline {
    agent any
    stages {
        stage('build') {
            environment {
                AWESOME_NAME = credentials('	0a813731-59be-4dd8-885f-5844fee8d492')
            }
            steps {
                sh 'printenv'
                sh 'docker build -t simple-django-on-docker -f Dockerfile .'
                sh 'docker ps -a | grep "jenkins-cfehome" | cut -d " " -f 1 |xargs -I {} docker stop {}'
                sh 'docker run --name jenkins-cfehome -d --rm -p 38086:8000 simple-django-on-docker'
            }
        }
    }
}
