pipeline {
    agent any 
    stages {
        stage ('clone') {
            steps {
                sh 'echo  "clone"'
                sh 'uname -r'
                sh 'nproc'
                sh 'uname -a'
            }
        }
stage('test'){
    steps {
        sh 'echo "test"'
    }
}   
stage('create file'){
    steps {
        sh 'touch text-$BUILD_ID' 
    }
}
    }

}   
 