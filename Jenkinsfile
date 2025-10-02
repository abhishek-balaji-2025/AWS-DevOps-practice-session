pipeline {
    agent {
        label "jenkins-s1"
    }

    stages {
        stage ("git checkout") {
            steps {
                git branch: 'main', url: 'https://github.com/abhishek-balaji-2025/AWS-DevOps-practice-session.git'
            }
        }

        stage ("docker build image") {
            steps {
                sh 'echo "build docker image via Dockerfile"'
                sh 'docker build -t webpage:latest .'
            }
        }

        stage ("run docker container from newly created docker image") {
            steps {
                sh 'echo "running docker containers..."'
                sh 'docker run -d --name homepage -p 80:80 webpage:latest'
            }
        }

        stage ("push the webpage.html to the s3 bucket") {
            steps {
                sh 'echo "pushing image to aws s3 bucket"'
                sh 'aws s3 cp homepage.html s3://abhishek-s3-bucket-02-10-2025/'
            }
        }
    }
}
