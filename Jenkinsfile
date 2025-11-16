pipeline{
    agent any
    stages{
        stage('codeScan'){
          steps{
                sh 'trivy fs . severity -o result.html'
                
        
            }
        }
           
            
stage('dockerImageBuild'){
    steps{
        sh 'docker -v'
    }
}
stage ('pushImage'){
    steps{
        sh 'docker ps'
    }
}            
            
        }
    }
