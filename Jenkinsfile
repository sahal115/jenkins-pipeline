pipeline {
    agent any

    stages {

        stage('codeScan') {
            steps {
                sh 'trivy fs . -o result.html'
                sh 'cat result.html'
            }
        }

        stage('dockerLogin') {
            steps {
                sh 'aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 941377148643.dkr.ecr.us-west-2.amazonaws.com'
            }
        }

        stage('dockerImageBuild') {
            steps {
                sh 'docker build -t jenkins-ci .'
                sh 'docker built -t imageversion .'
            }
        }

        stage('dockerImagetag') {
            steps {
                sh 'docker tag jenkins-ci:latest 941377148643.dkr.ecr.us-west-2.amazonaws.com/jenkins-ci:latest'
                sh 'docker tag imageversion \ 
                941377148643.dkr.ecr.us-west-2.amazonaws.com/jenkins-ci:v1.$BUILD_NUMBER' 
            }
        }

        stage('pushImage') {
            steps {
                sh 'docker push /
                941377148643.dkr.ecr.us-west-2.amazonaws.com/jenkins-ci:latest'
                sh 'docker push /
                941377148643.dkr.ecr.us-west-2.amazonaws.com/jenkins-ci:v1.$BUILD_NUMBER'
            }
        }

    } 
} 
