pipeline {
    agent any

    environment {
        EC2_HOST = '52.23.245.20'  // Địa chỉ IP của máy EC2
    }
        stage('Deploy to EC2') {
            steps {
                // Bước này để triển khai mã nguồn lên máy EC2
                script {
                    sshagent(['19521698']) {
                        sh "scp -o StrictHostKeyChecking=no -r * ubuntu@${EC2_HOST}:/var/www/html/"
                    }
                }
            }
        }
    }

