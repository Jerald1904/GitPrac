pipeline {
    agent any
    tools {
        maven 'Maven-3.9'   // Name you configured under Maven in Jenkins
        jdk 'jdk-17'        // Name you configured under JDK in Jenkins
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'master1', url: 'https://github.com/Jerald1904/GitPrac.git'
            }
        }
        stage('Build JAR') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh """
                        docker build -t jerald04/app:${env.BUILD_NUMBER} .
                        docker tag jerald04/app:${env.BUILD_NUMBER} jerald04/app:latest
                    """
                }
            }
        }
        stage('Push to DockerHub') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                        sh """
                            echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin
                            docker push jerald04/app:${env.BUILD_NUMBER}
                            docker push jerald04/app:latest
                        """
                    }
                }
            }
        }
    }
}
