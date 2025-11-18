pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/mohamadfarook/java_hello_student.git'
            }
        }

        stage('Build JAR') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'sudo docker build -t java_hello_student .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'sudo docker rm -f java_hello_container || true'
                sh 'sudo docker run -d --name java_hello_container -p 8081:8080 java_hello_student'
            }
        }
    }
}

