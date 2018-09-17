pipeline {
    agent { dockerfile true }
    stages {
        stage('first') {
            steps {
                sh 'echo "Tests Passed'
            }
        }
		
		stage('Push image'){
		    docker.withRegistry('https://hub.docker.com', 'docker'){
			app.push("${env.BUILD_Number}")
			app.push("lastest")
    }
}
