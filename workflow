name: SonarQube Analysis

on:
  push:
    branches:
      - main

jobs:
  sonarqube:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v2
      - name: SonarQube analysis
        env:
          SONAR_TOKEN: ${{ secrets.SONAR_TOKEN }}
          SONAR_HOST_URL: 'https://sonarqube.web.musketeers.dev/projects/create'
        run: |
          sonar-scanner \
          -Dsonar.host.url=$SONAR_HOST_URL \
          -Dsonar.login=$SONAR_TOKEN \
          -Dsonar.branch=$GITHUB_REF
