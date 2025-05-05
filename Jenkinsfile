pipeline {
    agent any

    stages {
        stage('Clone Repo Code') {
            steps {
                git url: 'https://github.com/Vipul271293/PythonProject.git'
            }
        }

        stage('Verify Python Installation') {
            steps {
                bat 'python --version'
                bat 'pip --version'
            }
        }

        stage('Install Robot Framework') {
            steps {
                bat 'pip install robotframework'
            }
        }
        stage('Start Video')
        {
            steps{
                browserstack(credentialsId: '8e09ecb9-c9f7-4122-bda0-614b1de3202d')
                {
                    echo "Video Recording started"
                }
            }
        }
        stage('Run Automation') {
            steps {
                bat 'robot Tests/'
            }
        }
    }
}
