# flac2mp3 Docker image

`flac2mp3` is a perl script that will search for flac files within a directory hierarchy and convert them all to mp3 format, creating a
matching directory structure in the process. The script is publicly available [at GitHub](https://github.com/robinbowes/flac2mp3).

This minimal [Docker image](https://github.com/hlfernandez/flac2mp3-docker) (based on Alpine Linux) contains this script and the required dependencies to run it. To use it, simply run: 

```bash
docker run --rm -v "/path/to/lossless:/path/to/lossless" -v "/path/to/lossy:/path/to/lossy" hlfernandez/flac2mp3 flac2mp3.pl /path/to/lossless /path/to/lossy
```

And if the source an target directories are under the same directory, it can be even simpler:

```bash
docker run --rm -v "/path/to/files:/path/to/files" -w "/path/to/files" hlfernandez/flac2mp3 flac2mp3.pl lossless lossy
```
