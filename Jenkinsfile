pipeline {
    agent any

    stages {
        stage('Pull Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Nimra-Javed/NimraJenkins.git'
            }
        }

        stage('CI - Run main.sh') {
            steps {
                sh 'chmod +x main.sh'
                sh './main.sh'
            }
        }

        stage('Test') {
            steps {
                sh 'chmod +x Test.sh'
                sh './Test.sh'
            }
        }

        stage('Deploy') {
            steps {
                echo '🚀 Deploying to local production folder...'
                sh 'cp main.sh ~/jenkins-docker-demo/'
                sh 'cp test.sh ~/jenkins-docker-demo/'
                echo '✅ Deployment completed!'
            }
        }
    }
}
