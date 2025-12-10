# PlasaPiCamera
Repo for rasberry Pi camera software.

# Todo
* CLV (center to limb variation) image analysis
* Python scripting to take a variety of images with different gain & shutter speed.
* Clean up shell scripts.

# Usage
To make a shell script executable, run:

```bash
chmod u+x filename.sh
```

## takepicture.sh
Usage:
```bash
./takepicture.sh <filename-prefix> -s <shutter_speed> -g <gain>

#e.g.

./takepicture.sh testimage -s 1000 -g 20

#Would output testimage_2025-01-20.jpg from the commant:
#rpicam-still -o "testimage_2025-01-20.jpg" --raw --gain 20 --shutter 100 -n --immediate
```
