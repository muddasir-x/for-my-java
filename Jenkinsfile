pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/muddasir-x/java-project.git'
            }
        }

        stage('Build & Test') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t java-project:1.0 .'
            }
        }

        stage('Deploy') {
            steps {
                sh 'docker stop java-project || true'
                sh 'docker rm java-project || true'
                sh 'docker run -d --name java-project -p 80:8085 java-project:1.0'
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished.'
        }
        success {
            echo 'Pipeline succeeded ✅'
        }
        failure {
            echo 'Pipeline failed ❌'
        }
    }
}
