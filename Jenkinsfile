pipeline {
    agent any 
    stages {
        stage ('CodeScan') {
            steps {
                sh 'trivy fs  . -o result.html'
                sh 'cat result.html'
               
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
 