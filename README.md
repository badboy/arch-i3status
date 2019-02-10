# Building i3status-git on Arch Linux

## Build docker container

```
docker build -t arch-i3status .
```

## Run the container & build the package

```
docker run -it --rm arch-i3status /bin/bash
```

```
su - i3
cd src
makepkg
```
