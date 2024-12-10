pipeline{
    agent any
    environment{
        my_app = "C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\mvc-for-jenkins_main\\mvc-app\\bin\\Release\\net8.0\\publish"
    }
    stages{
        stage("build"){
            steps{
                bat "dotnet publish -c release .//"
            }
        }
        stage("copy the compiled app"){
            steps{
                bat "copy ${my_app}\\*.dll  C:\\test101"
            }
        }
    }




}