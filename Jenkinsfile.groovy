pipeline {
    agent any

    environment {
        EC2_HOST = '34.239.254.233'  // Địa chỉ IP của máy EC2
    }

    stages {
        stage('Deploy to EC2') {
            steps {
                // Bước này để triển khai mã nguồn lên máy EC2
                script {
                    sshagent(['19521698']) {
                        sh "scp -o StrictHostKeyChecking=no -r * ubuntu@${EC2_HOST}:/var/www/html/UIT_G6_WEBPROJECT_LARAVEL"
                    }
                }
            }
        }
    }
}
