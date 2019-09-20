export DEVSHELL_PROJECT_ID=ca-highbird-test
docker pull maven:3.6.1-jdk-8-slim
docker build --no-cache=true -t gcr.io/${DEVSHELL_PROJECT_ID}/kfmp:test4-STEP1 -f Dockerfile_step1 .
docker build --no-cache=true -t gcr.io/${DEVSHELL_PROJECT_ID}/kfmp:test4-STEP2 -f Dockerfile_step2 .
docker push gcr.io/${DEVSHELL_PROJECT_ID}/kfmp:test5-STEP1
docker push gcr.io/${DEVSHELL_PROJECT_ID}/kfmp:test5-STEP2
