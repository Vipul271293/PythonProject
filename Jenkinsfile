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

        stage('Run Automation') {
            steps {
                bat 'robot Tests/'
            }
        }
    }
}
