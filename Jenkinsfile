pipeline {
    agent any
    stages {
        stage('Stage 1') {
            steps {
                sh 'docker ps' 
            }
        }
        stage('stage 2') {
        steps {
        script {
            //docker.image('postgres:12.1').withRun('-p 5432')  { c ->
            docker.image('postgres:12.1').inside("--link pgAdmin 4 - DB:postgres") { c ->
           "psql -h 127.0.0.1 -U postgres -p 45895 /bin/bash \
           psql -c \"CREATE USER sonar WITH PASSWORD 'sonar';"
           //sh "-h 127.0.0.1 -U postgres bash -c "psql -c \"CREATE USER sonar WITH PASSWORD 'sonar';\"""
        }
     //   stage (stage '3')
       // {
        //    sh 'create database my_db;'
        //}
        }
        }
        
    }
}
}
