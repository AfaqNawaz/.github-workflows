on: [push]

jobs:
  build:
  name: Hello world
  runs-on: ubuntu-latest
  steps:
  - uses: actions/checkout@v2
  - name: Write a multi-line message
    run: |
      echo This demo file shows a 
      echo very basic and easy-to-understand workflow.
