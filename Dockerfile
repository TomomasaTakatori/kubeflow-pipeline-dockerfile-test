FROM maven:3.6.1-jdk-8-slim as STEP1
SHELL ["/bin/bash", "-c"]
RUN apt-get update && apt-get install --no-install-recommends -y git
RUN git clone https://cf5c137a7e11bf1acb1910c76911251aabc5d9f3:x-oauth-basic@github.com/cloud-ace/biz-eg-healthcare-iot-prep-PreProcessingCollection.git
WORKDIR biz-eg-healthcare-iot-prep-PreProcessingCollection
RUN mvn compile

FROM maven:3.6.1-jdk-8-slim as STEP2
SHELL ["/bin/bash", "-c"]
RUN apt-get update && apt-get install --no-install-recommends -y git
RUN git clone https://cf5c137a7e11bf1acb1910c76911251aabc5d9f3:x-oauth-basic@github.com/cloud-ace/biz-eg-healthcare-iot-prep-SelectFeatureColumns.git
WORKDIR biz-eg-healthcare-iot-prep-SelectFeatureColumns
RUN mvn compile
