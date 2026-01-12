pipeline {
    agent any

    tools {
        jdk 'jdk11'
    }

    stages {

        stage('Checkout') {
            steps {
                echo 'Checking out source code...'
                git branch: 'master',
                    url: 'https://github.com/pallavibamini/pipeline-git-repo.git'
            }
        }

        stage('Build & Test') {
            steps {
                echo 'Building and testing application...'
                sh 'chmod +x build.sh'
                sh './build.sh'
            }
        }

        stage('Archive') {
            steps {
                echo 'Archiving artifacts...'
                archiveArtifacts artifacts: 'app.jar', fingerprint: true
            }
        }
    }

    post {
        always {
            echo 'Pipeline completed'
            cleanWs()
        }
        success {
            echo 'Pipeline SUCCESS '
        }
        failure {
            echo 'Pipeline FAILED '
        }
    }
}
