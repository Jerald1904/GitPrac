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
    }
}

post {
    success {
        archiveArtifacts artifacts: '**/*.jar', fingerprint: true
    }
}

post {
    failure {
        mail to: 'albertjerald19@gmail.com',
             subject: "Build Failed: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
             body: "Check console output at ${env.BUILD_URL}"
    }
}

