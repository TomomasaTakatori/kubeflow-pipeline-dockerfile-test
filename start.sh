docker pull maven:3.6.1-jdk-8-slim
docker build -t gcr.io/${DEVSHELL_PROJECT_ID}/kfmp:test3-STEP1 -t gcr.io/${DEVSHELL_PROJECT_ID}/kfmp:test3-STEP2
docker push gcr.io/${DEVSHELL_PROJECT_ID}/kfmp:test3-STEP1
docker push gcr.io/${DEVSHELL_PROJECT_ID}/kfmp:test3-STEP2
