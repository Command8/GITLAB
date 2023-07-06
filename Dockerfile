FROM markhobson/maven-chrome:jdk-11

ARG ALLURE_VERSION="2.8.0"

# Install Apt Packages
RUN apt-get -qq update \
    && apt-get -qq install -y python3 \
    python3-pip \
    unzip

# Download and install Allure
RUN wget "https://github.com/allure-framework/allure2/releases/download/${ALLURE_VERSION}/allure-${ALLURE_VERSION}.zip" \
    && unzip "allure-${ALLURE_VERSION}.zip" \
    && rm "allure-${ALLURE_VERSION}.zip" \
    && pip3 install allure-combine
