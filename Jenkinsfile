pipeline{
    agent any
    
    tools {
        terraform 'terraform'
    }
    stages{
        stage("Checkout from Git"){
            steps{
                git credentialsId: 'c6b38c5e-75fa-48b2-9034-a329ef50ba13', url: 'https://github.com/rprvnkmr4/terraform.git'
            }

        }

        stage ("Terraform Init"){
            steps {
                sh 'terraform init'
            }
            
        }

        stage ("Terraform fmt") {
            steps {
                sh 'terraform fmt'
            }
        }

        stage ("Terraform Plan"){
            steps {
                sh 'terraform plan'
            }
        }

        stage ("Terraform apply") {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }


    }
}
