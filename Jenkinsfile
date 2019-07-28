pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/arulelango/dockerexample.git']]])
            }
        }
        stage('Prepare Dockerimage') {
            steps {
                echo 'Preparing docker image..'
                sh 'docker build -t arulelango/mydockerspring .'
                echo 'Docker image done!'
            }
        }
        stage('Docker run') {
            steps {
                echo 'Running docker image..'
                sh 'docker run -d -p 91:8080 arulelango/mydockerspring'
                echo 'Docker done!'
            }
        }
    }
}
