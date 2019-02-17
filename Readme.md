# Plex Media Server Container

This container extends the plexinc/pms-docker container by adding the cifs-utils package. This allows you to mount a CIFS share in the container, which you should do using /etc/fstab. The easiest way to do that is to mount your own custom fstab file in the container with all of the CIFS share connection information. The `docker-compose.yml` is an example of doing that and an fstab file template is also included. 

The `build.ps1` script simplifies building the container locally.

After setting up the local volumes for Config and Transcode as well as creating your fstab file and updating the `docker-compose.yml` file with those details (as well as your Plex claim data), just run `docker-compose up -d` to run the container.