# Magnolia Docker Image
This repo contains the code to build a simple Magnolia Docker image.

The image is based on Nicolas Barbe work at https://github.com/nicolasbarbe/magnolia-docker

The new image builds using the following;
    
    Debian 10 - 10.4 Buster Slim
    Tomcat 9 - 9.0.37
    OpenJDK 11 - 11.0.8 2020-07-14

To run the image run the following

    docker run -d -p 8080:8080 --name magnolia ducksecops/magnolia