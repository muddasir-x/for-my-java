pipeline {
    agent any

    tools {
        maven 'Maven3'   // Jenkins Global Tool Configuration me jo name diya hai
        jdk 'Java11'     // Project ke JDK ke hisaab se
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/muddasir-x/my-new-repo.git'
            }
        }

        stage('Maven Build') {
            steps {
                sh 'mvn clean package'
            }
        }
    }

    post {
        success {
            echo '✅ Maven Build Successful!'
        }
        failure {
            echo '❌ Maven Build Failed!'
        }
    }
}
