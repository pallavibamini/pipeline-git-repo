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

        stage('Build') {
            steps {
                echo 'Building application...'
                sh 'chmod +x build.sh'
                sh './build.sh'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'java -cp src/main/java com.example.HelloDevOpsTest'
            }
        }

        stage('Archive') {
            steps {
                echo 'Archiving artifacts...'
                archiveArtifacts artifacts: 'app.jar', fingerprint: true
                archiveArtifacts artifacts: 'build.sh', fingerprint: true
            }
        }
    }

    post {
        always {
            echo 'Pipeline completed'
            cleanWs()
        }
    }
}
