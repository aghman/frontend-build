# frontend-build
Container definition to perform client-side builds 

## Building the container
docker build -t frontend-build ./

## Publishing updated image to Docker Hub
docker tag frontend-build aghman/frontend-build
docker push aghman/frontend-build

## Running the container
docker run -i -v $(pwd):/buildspace -t frontend-build /bin/bash
