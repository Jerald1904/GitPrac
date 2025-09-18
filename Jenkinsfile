pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo "Building project..."
            }
        }
        stage('Test') {
            steps {
                echo "Running tests..."
            }
        }
        stage('Deploy') {
            steps {
                echo "Deploying application..."
            }
        }
	stage('Docker'){
	    steps {
	        script {
                    sh """
                        docker build -t app .
                        docker run -d -p 5000:5000 app
                    """
                }
            }
        }
    }
}
