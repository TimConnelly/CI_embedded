pipeline {
    agent { label 'segger_embuild' }
    environment {
        PROJ_DIR = "${env.WORKSPACE}" 
        PROJ_FILE = "${env.PROJ_DIR}/ci_test.emProject"
        OUTPUT_DIR = "${env.PROJ_DIR}/Output/Release/Exe"
    }
    stages {
        stage('build') {
            
            steps {
                sh '/opt/ses/bin/emBuild'
                sh '/opt/ses/bin/emBuild -rebuild -config "Release" -project "ci_test" ${PROJ_FILE}'
            }
        }
    }
    post {
        always {
            echo 'This will always run'
            archiveArtifacts artifacts: "Output/Release/Exe/ci_test.hex", onlyIfSuccessful: true

        }
        success {
            echo 'This will run only if successful'
        }
        failure {
            echo 'This will run only if failed'
        }
        unstable {
            echo 'This will run only if the run was marked as unstable'
        }
        changed {
            echo 'This will run only if the state of the Pipeline has changed'
            echo 'For example, if the Pipeline was previously failing but is now successful'
        }
    }
}