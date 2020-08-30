pipeline {
    agent any
    stages {
        stage('build') {
            environment {
                AWESOME_NAME = credentials('e6741f1d-c669-432f-8bc8-e35b51a431c0')
                DOCKER_TXT = credentials('e6741f1d-c669-432f-8bc8-e35b51a431c0')
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
