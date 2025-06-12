pipeline { 
agent { 
docker { image 'python:3.11' } 
} 
stages { 
stage('Afficher version Python') { 
5 
steps { 
sh 'python --version' 
} 
} 
stage('Exécuter un script') { 
steps { 
sh 'echo "print(\'Hello from Docker container!\')" > hello.py' 
sh 'python hello.py' 
} 
} 
} 
} 