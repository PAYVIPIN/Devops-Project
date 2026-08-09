pipeline{
    agent {label 'Jenkin-agent'}

    stages{
        stage ("Cleanup Workspace"){
            step{
                cleanWs()
            }
        }
        stage ("Checkout from SCM"){
            step{
                git branch "main" credentiald "" url ""
            }
        }
        stage ("Build the application"){
            step{
                sh "mvn clean package"
            }
        }
        stage ("Test the application"){
            step{
                sh "mvn test"
            }
        }
    }
}