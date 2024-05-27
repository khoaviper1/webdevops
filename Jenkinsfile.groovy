pipeline {
    agent any

    environment {
        EC2_HOST = '34.207.58.41'  // Địa chỉ IP của máy EC2
        SSH_KEY = credentials('19521698')  // Thay 'ec2-ssh' bằng ID của khóa SSH được lưu trong Jenkins Credentials
    }

    stages {
        stage('Deploy to EC2') {
            steps {
                // Bước này để triển khai mã nguồn lên máy EC2
                script {
                    sshagent(['19521698']) {
                        sh "scp -i ${SSH_KEY} -r * ubuntu@${EC2_HOST}:/var/www/html/"
                    }
                }
            }
        }
    }
}
