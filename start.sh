docker pull maven:3.6.1-jdk-8-slim
docker build -t gcr.io/${DEVSHELL_PROJECT_ID}/kfmp:test3-STEP1 -f Dockerfile_step1 .
docker build -t gcr.io/${DEVSHELL_PROJECT_ID}/kfmp:test3-STEP2 -f Dockerfile_step2 .
docker push gcr.io/${DEVSHELL_PROJECT_ID}/kfmp:test3-STEP1
docker push gcr.io/${DEVSHELL_PROJECT_ID}/kfmp:test3-STEP2
