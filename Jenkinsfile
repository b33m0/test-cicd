pipeline {
    agent any

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "M3"
    }

    stages {
        stage('Build maven') {
            steps {
                // Get some code from a GitHub repository
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/b33m0/test-cicd']])
                sh "mvn clean install"
            }
        }

        stage('Build docker image') {
            steps {
                script {
                    sh "docker build -t cicd-demo ."
                }
            }
        }

        stage('Push docker image to docker hub') {
            steps {
                script {
                    withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
                        sh 'docker login -u b33mo -p ${dockerhubpwd}' // login to docker hub
                    }
                    sh 'docker tag cicd-demo b33mo/default:cicd-demo'
                    sh 'docker push b33mo/default:cicd-demo'
                }
            }
        }

    }
}
