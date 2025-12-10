# PlasaPiCamera
Repo for rasberry Pi camera software.

## Usage
To run a shell script, you must first make it executable using:

```bash
chmod u+x filename.sh

#Then it can be executed
./filename.sh
```
To run a python file, run:
```bash
python3 filename.py
```

# Scripts
## takepicture.sh
This shell script takes a .jpg image at a user specified shutter speed (in ms) & gain.
This script ALSO outputs a raw .dng file (~24MB). Many uses of this script will use a lot of storage.
Usage:
```bash
./takepicture.sh <filename-prefix> -s <shutter_speed_in_ms> -g <gain>

#e.g.

./takepicture.sh testimage -s 1000 -g 20

#Would output testimage_2025-01-20.jpg from the commant:
#rpicam-still -o "testimage_2025-01-20.jpg" --raw --gain 20 --shutter 100 -n --immediate
#testimage_2025-01-20.jpg & testimage_2025-01-20.dng will be in same directory as takepicture.sh.
```

## debug.sh
This shell script uses the rpicam-hello command to open up a live video feed from the camera given a user specified shutter speed & gain.




# Todo
* CLV (center to limb variation) image analysis & image averaging in python.
* Python scripting to take a variety of images with different gain & shutter speed.
* Clean up shell scripts from Pi.
