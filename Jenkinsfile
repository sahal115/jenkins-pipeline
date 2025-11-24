pipeline {
    agent any

   environment{
    AWS_REGION ='us-west-2'

    ECR_REPO ='941377148643.dkr.ecr.us-west-2.amazonaws.com/jenkins-ci'
   }
    stages {

        stage('codeScan') {
            steps {
                sh 'trivy fs . -o result.html'
                sh 'cat result.html'
            }
        }

        stage('dockerLogin') {
            steps {
                sh 'aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin 941377148643.dkr.ecr.us-west-2.amazonaws.com'
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
                sh 'docker tag jenkins-ci:latest ECR_REPO:latest'
                sh 'docker tag imageversion ECR_REPO:v1.$BUILD_NUMBER' 
            }
        }

        stage('pushImage') {
            steps {
                sh 'ECR_REPO:latest'
                sh 'ECR_REPO:v1.$BUILD_NUMBER'
            } 
        }

    } 
} 
