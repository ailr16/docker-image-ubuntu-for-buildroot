# Ubuntu for buildroot (Docker image)
Here are files related to building image. This is the result of many attempts for building a buildroot image for Raspberry Pi using Manjaro (6.6.10-1-MANJARO).

I've tested on Windows 11 Pro

<mark>The container provides the environment to build the image using:
- <mark>Ubuntu 20.04
- <mark>Buildroot 2023.11


## Building docker image
- In the repo directory:
    ```
    docker build -t ubuntu-for-buildroot . 
    ```

## Run the container
- Run my latest version in interactive mode:
    ```
    docker run -it ailr16/ubuntu-for-buildroot
    ```

- Or run with a volume:
    ```
    docker run --name <containerId> -v <path_in_host>:/buildroot/buildroot-2023.11/output/images -it ailr16/ubuntu-for-buildroot
    ```

## Get the output files
- For example, for Raspberry Pi the output image will be in /buildroot/buildroot-2023.11/output/images/, so copy with:
    ```
    docker cp <containerId>:/buildroot/buildroot-2023.11/output/images/sdcard.img <path_in_host>
    ```

- If you used the volume way, just go to the host specified directory

![Output image](/media/image_output.png)