pipeline {
    agent any

    environment {
        EC2_HOST = '52.23.245.20'  // Địa chỉ IP của máy EC2
        DEST_PATH = '/var/www/html/'  // Thư mục đích trên EC2
    }
    stage('Test PHP Environment') {
            steps {
                // Kiểm tra phiên bản PHP
                sh 'php -v'

                // Kiểm tra các extension PHP
                sh 'php -m'
            }
    }
    stages {
        stage('Deploy to EC2') {
            steps {
                // Bước này để triển khai mã nguồn lên máy EC2
                script {
                    sshagent(['19521698']) {
                        // Sử dụng rsync để đồng bộ mã nguồn lên EC2
                        sh """
                        echo "Đồng bộ mã nguồn lên EC2..."
                        rsync -avz --delete -e "ssh -o StrictHostKeyChecking=no" . ubuntu@${EC2_HOST}:${DEST_PATH}
                        """
                    }
                }
            }
        }
    }
}

