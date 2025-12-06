pipeline {
    agent any

    environment {
        // Name of the Docker image and container
        IMAGE_NAME = "my-node-app" 
        CONTAINER_NAME = "node-app-container"
        APP_PORT = "3000"
    }

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    echo 'Building Docker Image...'
                    // Build the image using the Dockerfile in the current directory
                    sh "docker build -t ${IMAGE_NAME} ."
                }
            }
        }

        stage('Deploy to EC2') {
            steps {
                script {
                    echo 'Deploying Container...'
                    
                    // 1. Stop and remove the old container if it exists
                    // "|| true" ensures the pipeline doesn't fail if the container doesn't exist yet
                    sh "docker stop ${CONTAINER_NAME} || true"
                    sh "docker rm ${CONTAINER_NAME} || true"
                    
                    // 2. Run the new container
                    // -d: Detached mode (runs in background)
                    // -p: Map EC2 port to Container port (Host:Container)
                    // --name: Naming it allows us to stop it easily next time
                    sh "docker run -d -p ${APP_PORT}:${APP_PORT} --name ${CONTAINER_NAME} ${IMAGE_NAME}"
                }
            }
        }
    }
}
