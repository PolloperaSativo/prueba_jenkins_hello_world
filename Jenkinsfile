pipeline {
    agent any
stages {
    stage('Checkout') {
        steps {
            checkout scm
            }
        }
        stage('Build Image') {
            steps {
                // Construye la imagen de Docker usando el Dockerfile del repo
                sh 'docker build -t fase1:latest .'
            }
        }
     stage('Run Container') {
            steps {
                 // Prueba que el contenedor arranca
                // Nota: Al ser un script interactivo, aquí solo verificamos que compile
                sh 'docker run --name test-container -d fase1:latest
                // sh 'docker stop test-container && docker rm test-container'
            }
        }
    }
}
