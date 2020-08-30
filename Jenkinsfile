pipeline {
    agent any
    stages {
        stage('build') {
            environment {
                AWESOME_QQ = credentials('e059b864-4df0-429d-8404-f1fc41fe7808')
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
