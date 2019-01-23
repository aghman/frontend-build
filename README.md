# frontend-build
Container definition to perform client-side builds 

## Building the container
docker build -t frontend-build ./

## Running the container
docker run -i -v $(pwd):/buildspace -t frontend-build /bin/bash
