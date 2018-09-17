pipeline {
    agent { dockerfile true }
    stages {
        stage('first') {
            steps {
                sh 'docker build -t testing .'
            }
        }
		
		stage('Push image'){
		    docker.withRegistry('https://hub.docker.com', 'docker'){
			app.push("${env.BUILD_Number}")
			app.push("lastest")
			}
    }
}
