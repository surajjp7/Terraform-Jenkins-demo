pipeline {
agent any

stages {
stage ('checkout') {
  steps {
  }
}
stage ('Terraform Init') {
  steps {
       sh 'terraform init'
  }
}
stage ('Terraform Validate') {
  steps {
       sh 'terraform validate'
  }
}
stage ('terraform Plan') {
  steps {
       sh 'terraform plan'
  }
}
stage ('terraform apply') {
  steps {
       sh 'terraform apply -auto-approve'
  }
}
}
post {
        success {
            echo 'Terraform applied successfully 🚀'
        }
        failure {
            echo 'Terraform pipeline failed ❌'
        }
    }
}
