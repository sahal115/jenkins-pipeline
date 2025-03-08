pipeline {
    agent any 
    stages {
        stage ('CodeScan') {
            steps {
                sh 'trivy --version'
               
            }
        }
stage('docker imageBuild'){
    steps {
        sh 'docker -v'
    }
}   
stage('pushImage'){
    steps {
        sh 'docker ps' 
    }
}
    }

}   
 