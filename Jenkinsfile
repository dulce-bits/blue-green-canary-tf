pipeline {
    agent { docker { image 'hashicorp/terraform:0.14.3' } }
    stages {
        stage('Checkout SCM') {
            steps {
            checkout scm
            }
        }
        stage('Initialiaze config') {
            steps {
            sh 'terraform init'
            }
        }
        stage('Execute plan') {
            steps {
            sh 'terraform plan'
            }
        }
        stage('Run tests') {
            when {
                anyOf{
                    branch 'feature/*'
                    branch 'fix/*'
                }
            }
            steps {
                //Terratest tests
            }
        }
        stage('Deploy changes') {
            when {
                branch 'main'
            }
            steps {
            sh 'terraform apply --auto-approve'
            }
        }
    }
}
