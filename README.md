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
This shell script takes a .jpg image at a user specified shutter speed & gain.
Usage:
```bash
./takepicture.sh <filename-prefix> -s <shutter_speed> -g <gain>

#e.g.

./takepicture.sh testimage -s 1000 -g 20

#Would output testimage_2025-01-20.jpg from the commant:
#rpicam-still -o "testimage_2025-01-20.jpg" --raw --gain 20 --shutter 100 -n --immediate
```


# Todo
* CLV (center to limb variation) image analysis & image averaging in python.
* Python scripting to take a variety of images with different gain & shutter speed.
* Clean up shell scripts from Pi.
