pipeline {
    agent any 
    stages {
        stage ('CodeScan') {
            steps {
                sh 'trivy fs  . -o result.html'
                sh 'cat result.html'
               
            }
        }
        stage('dockerLogin')
            steps{
                sh 'aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 941377148643.dkr.ecr.us-east-1.amazonaws.com'
            }
        }
stage('docker imageBuild'){
    steps {
        sh 'docker build -t jenkins-ci .'
    }
}
stage('DockerImageTag'){
    steps{
        sh'docker tag jenkins-ci:latest 941377148643.dkr.ecr.us-east-1.amazonaws.com/jenkins-ci:latest'
    }
}  
stage('pushImage'){
    steps {
        sh 'docker push 941377148643.dkr.ecr.us-east-1.amazonaws.com/jenkins-ci:latest' 
    }
}
    }

   
 
  }

 }