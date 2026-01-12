pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main', credentialsId: 'GitHub', url: 'https://github.com/surajjp7/Terraform-Jenkins-demo.git'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }

    post {
        success {
            echo 'Terraform applied successfully'
        }
        failure {
            echo 'Terraform pipeline failed'
        }
    }
}
