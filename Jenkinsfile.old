pipeline {
    agent any
    
    tools {
        // Configuration Maven pour Jenkins test push
        maven 'Maven-3.9.10'
    }
    
    stages {
        stage('Environment Setup') {
            steps {
                echo '🔧 Vérification de l\'environnement...'
                echo 'Vérification de Maven:'
                bat 'mvn -v'
                echo '✅ Maven configuré correctement!'
            }
        }
        
        stage('Build') {
            steps {
                echo '🔨 Début de la compilation du projet...'
                echo 'Compilation en cours...'
                sleep 2 // Simule le temps de compilation
                echo '✅ Compilation terminée avec succès!'
            }
        }
        
        stage('Test') {
            steps {
                echo '🧪 Lancement des tests...'
                echo 'Exécution des tests unitaires...'
                sleep 3 // Simule le temps d'exécution des tests
                echo 'Tests d\'intégration en cours...'
                sleep 2
                echo '✅ Tous les tests sont passés avec succès!'
            }
        }
        
        stage('Deploy') {
            steps {
                echo '🚀 Début du déploiement...'
                echo 'Préparation de l\'environnement de déploiement...'
                sleep 2
                echo 'Déploiement de l\'application...'
                sleep 3
                echo '✅ Déploiement terminé avec succès!'
            }
        }
    }
    
    post {
        success {
            echo '🎉 Pipeline exécuté avec succès!'
        }
        failure {
            echo '❌ Échec du pipeline'
        }
        always {
            echo '🏁 Nettoyage des ressources temporaires'
        }
    }
}