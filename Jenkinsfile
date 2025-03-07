pipeline {
    agent any 
    stages {
        stage ('clone') {
            steps {
                sh 'echo  "clone"'
            }
        }
stages ('test') {
    steps {
        sh 'echo "test"'
    }
}   
stage ('create file') {
    steps {
        sh 'touch text-$BUILD_ID' 
    }
}
    }

}    