pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Build') {
            steps {
                sh 'docker build -t python-app .'
            }
        }
        
        stage('Run') {
            steps {
                sh '''
                    docker stop python-app-container || true
                    docker rm python-app-container || true
                    docker run -d --name python-app-container python-app
                    echo "Contenedor ejecutándose:"
                    docker ps | grep python-app-container
                '''
            }
        }
    }
}
