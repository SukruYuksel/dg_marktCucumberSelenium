pipeline {
    agent any
    tools {
        maven 'MAVEN'
        jdk 'JDK'
    }
    options {
        timestamps()
        buildDiscarder(logRotator(numToKeepStr: '10'))
    }

    triggers {
        cron('0 6 * * 1-5')
    }
    
    parameters {
        string(name: 'TagName', defaultValue: "@employee", description: 'Scenario Tag to be run')
    }
    
    stages {
        stage('Initialize') {
            steps {
                script {
                    wrap([$class: 'AnsiColorBuildWrapper', 'colorMapName': 'xterm']) {
                        sh '''
                            echo "PATH = ${PATH}"
                            echo "M2_HOME = ${M2_HOME}"
                        '''
                    }
                }
            }
        }
        stage('Build') {
            steps {
                script {
                    wrap([$class: 'AnsiColorBuildWrapper', 'colorMapName': 'xterm']) {
                        sh "mvn -f pom.xml -B -DskipTests clean package"
                    }
                }
            }
            post {
                success {
                    archiveArtifacts artifacts: '**/*.jar'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    wrap([$class: 'AnsiColorBuildWrapper', 'colorMapName': 'xterm']) {
                        sh "mvn -f pom.xml test"
                        sh "mvn clean verify -Dcucumber.filter.tags='${params.TagName}' -DfailIfNoTests=false"
                    }
                }
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                    archiveArtifacts artifacts: 'target/cucumber-report.html'
                }
            }
        }
        stage('Cucumber Report') {
            steps {
                script {
                    wrap([$class: 'AnsiColorBuildWrapper', 'colorMapName': 'xterm']) {
                        cucumber buildStatus: "UNSTABLE",
                                 fileIncludePattern: "**/cucumber.json",
                                 jsonReportDirectory: "target"
                    }
                }
            }
        }
    }
}
