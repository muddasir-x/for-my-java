pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    credentialsId: 'github-creds',
                    url: 'https://github.com/muddasir-x/for-my-java.git'

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
                sh 'docker run -d --name java-project -p 8081:8080 java-project:1.0'
            }
        }
    }
}

