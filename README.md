# Accord Project Template Studio

A simple Web-based editor for Accord Project templates.

<img src="https://raw.githubusercontent.com/accordproject/template-studio/master/studio.png" width="350">

# For template authors

The Accord Project Template Studio is live at https://studio.accordproject.org

# For contributors

The template studio is a work in progress and we are very interested to hear from you. Let us know what you like or don't like about the template studio, report bugs or suggest new features by opening a GitHub issue.

## Install and run locally

You can run the template studio on your machine by doing:

```
npm install
npm run start
```

Go to http://localhost:8080

## Docker from source 

- You can build the docker images

    ```bash
    docker build --no-cache -f Dockerfile -t template-studio:latest .
    ```

- Start template-studio docker container

    ```bash
    docker run -d -it  -p 80:80 --name template-studio template-studio:latest
    ```

## Directly from Dockerhub image


