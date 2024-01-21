# Ubuntu for buildroot (Docker image)
Here are files related to building image. This is the result of many attempts for building a buildroot image for Raspberry Pi using Manjaro (6.6.10-1-MANJARO).

Ive tested on same Manjaro setup and Windows 11 Pro

## Building docker image
- In the repository directory:
    ```
    docker build -t ubuntu-for-buildroot . 
    ```

## Run the container

- By default the container creates a output folder in
    ```
    /buildroot/volumeOutput
    ```
    So run the container with a volume referenced to that directory:
    ```
    docker run --name testing1 -v $(pwd)/OutputImg:/buildroot/volumeOutput -it ubuntu-for-buildroot 
    ```
- It runs in interactive mode, so use make for configure and start building

- When the image building finishes, copy that *img to /buildroot/volumeOutput:
    ```
    cp output/images/sdcard.img ../volumeOutput
    ```

- The image will be accessible in the host
![Output image](/media/image_output.png)