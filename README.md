# XenPi
This is an application I developed by Sonic Pi and Processing for playing microtonal performance.

## Required environment
1. [Sonic Pi](https://sonic-pi.net/)
2. [Processing](https://processing.org/) (If you want to arrange this application)

## Download
<details>
  <summary>Ver1.0</summary>
* [macOS(Intel 64bit)](https://github.com/Uchida16104/XenPi/blob/main/ver1.0/XenPi.pde) - Just download .pde and .rb files.
* [macOS(Apple Silicon)](https://github.com/Uchida16104/XenPi/raw/main/ver1.0/macos-aarch64.zip)
* [Windows(Intel 64bit)](https://github.com/Uchida16104/XenPi/raw/main/ver1.0/windows-amd64.zip)
* [Linux(Intel 64bit)](https://github.com/Uchida16104/XenPi/raw/main/ver1.0/linux-amd64.zip)
* [Linux(Raspberry Pi 32bit)](https://github.com/Uchida16104/XenPi/raw/main/ver1.0/linux-arm.zip)
* [Linux(Raspberry Pi 64bit)](https://github.com/Uchida16104/XenPi/raw/main/ver1.0/linux-aarch64.zip)
</details>
<details>
  <summary>Ver1.1</summary>
* [macOS(Intel 64bit)](https://github.com/Uchida16104/XenPi/blob/main/ver1.1/XenPi.pde) - Just download .pde and .rb files.
* [macOS(Apple Silicon)](https://github.com/Uchida16104/XenPi/raw/main/ver1.1/macos-aarch64.zip)
* [Windows(Intel 64bit)](https://github.com/Uchida16104/XenPi/raw/main/ver1.1/windows-amd64.zip)
* [Linux(Intel 64bit)](https://github.com/Uchida16104/XenPi/raw/main/ver1.1/linux-amd64.zip)
* [Linux(Raspberry Pi 32bit)](https://github.com/Uchida16104/XenPi/raw/main/ver1.1/linux-arm.zip)
* [Linux(Raspberry Pi 64bit)](https://github.com/Uchida16104/XenPi/raw/main/ver1.1/linux-aarch64.zip)
</details>

## Install
1. Re-unzip the downloaded .zip file with the contents according to your operating system.
2. Then, run the executable file (.exe, .app, .sh) and "Xen.rb" file on Sonic Pi.

## Usage
### Ver1.0
1. Processing
* Synth - means value of synth names on Sonic Pi.
* Amp - means amp value on Sonic Pi.
* Pan - means pan value on Sonic Pi.
* Attack - means attack value on Sonic Pi.
* Decay - means decay value on Sonic Pi.
* Sustain - means sustain value on Sonic Pi.
* Release - means release value on Sonic Pi.
* Edo - means Edo value on Sonic Pi (Edo means Equal Division of the Octave, and microtonal tuning).
* Number - means what number of the microtonal is playing.
* Chord - means value of chord names when "Mode" value shows 1.
* Scale - means value of scale names when "Mode" value shows 2.
* Time - means how much interval separates the sounds.
* Mode - means when value 0 is "Note", 1 is "Chord", 2 is "Scale", and can select performance type.
2. Sonic Pi
* Just load "Xen.rb" and run it on Sonic Pi as above.
### Ver1.1
1. Processing
* Effect - means value of effect names on Sonic Pi.
* Mix - means value of effect volume.
* Division - means the value specified by "Beat" is separated by which value.
* Beat - means how many beats to adjust the rhythm.
* Step - means how much degree of rhythmic complexity.
* Tone - means the kind of bass drum(:bd), snare drum(:sn), and drums(:drums) tone on Sonic Pi.
* 1~8 - means the volume of the nth beat.
** Deleted function of "Scale" on "Synth" compare with ver1.0.

## Image
### Ver1.0
<img src="ver1.0/XenPi-P.png"/>
<img src="ver1.0/XenPi-SP.png"/>

### Ver1.1
<img src="ver1.1/XenPi-P.png"/>
<img src="ver1.1/XenPi-SP.png"/>

## Log
Developed on :
<br>
25th, May, 2023
<br>
<br>
Published on : 
<br>
26th, May, 2023
<br>
<br>
Released on :
<br>
4th, June, 2023
<br>
<br>
by Hirotoshi Uchida
