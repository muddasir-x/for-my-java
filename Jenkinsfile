pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/muddasir-x/for-my-java.git'
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
