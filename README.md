# XenPi
This is an application I developed by Sonic Pi, Processing, and Hydra for playing microtonal performance.

## Required environment
<details>
  <summary>Software</summary>
<ol>
<li><a href="https://sonic-pi.net/">Sonic Pi</a></li>
<li><a href="https://www.oracle.com/java/technologies/downloads/">Java Environment Runtime 17 </a></li>
<li><a href="https://hydra.ojack.xyz/">Hydra </a><i>(from ver1.2, and no need to install this one since it's online)</i></li>
</ol>
</details>

## Download
<details>
  <summary>Ver1.0</summary>
<li><a href="https://github.com/Uchida16104/XenPi/blob/main/ver1.0/XenPi.pde">macOS(Intel 64bit)</a><i> - Just download .pde and .rb files.</i></li>
<li><a href="https://github.com/Uchida16104/XenPi/raw/main/ver1.0/macos-aarch64.zip">macOS(Apple Silicon)</a></li>
<li><a href="https://github.com/Uchida16104/XenPi/raw/main/ver1.0/windows-amd64.zip">Windows(Intel 64bit)</a></li>
<li><a href="https://github.com/Uchida16104/XenPi/raw/main/ver1.0/linux-amd64.zip">Linux(Intel 64bit)</a></li>
<li><a href="https://github.com/Uchida16104/XenPi/raw/main/ver1.0/linux-arm.zip">Linux(Raspberry Pi 32bit</a></li>
<li><a href="https://github.com/Uchida16104/XenPi/raw/main/ver1.0/linux-aarch64.zip">Linux(Raspberry Pi 64bit)</a></li>
</details>
<details>
  <summary>Ver1.1</summary>
<li><a href="https://github.com/Uchida16104/XenPi/blob/main/ver1.1/XenPi.pde">macOS(Intel 64bit)</a><i> - Just download .pde and .rb files.</i></li>
<li><a href="https://github.com/Uchida16104/XenPi/raw/main/ver1.1/macos-aarch64.zip">macOS(Apple Silicon)</a></li>
<li><a href="https://github.com/Uchida16104/XenPi/raw/main/ver1.1/windows-amd64.zip">Windows(Intel 64bit)</a></li>
<li><a href="https://github.com/Uchida16104/XenPi/raw/main/ver1.1/linux-amd64.zip">Linux(Intel 64bit)</a></li>
<li><a href="https://github.com/Uchida16104/XenPi/raw/main/ver1.1/linux-arm.zip">Linux(Raspberry Pi 32bit)</a></li>
<li><a href="https://github.com/Uchida16104/XenPi/raw/main/ver1.1/linux-aarch64.zip">Linux(Raspberry Pi 64bit)</a></li>
</details>
<details>
  <summary>Ver1.2</summary>
<li><a href="https://github.com/Uchida16104/XenPi/blob/main/ver1.2/XenPi.pde">macOS(Intel 64bit)</a><i> - Just download .pde, .rb, and .js files.</i></li>
<li><a href="https://github.com/Uchida16104/XenPi/raw/main/ver1.2/macos-aarch64.zip">macOS(Apple Silicon)</a></li>
<li><a href="https://github.com/Uchida16104/XenPi/raw/main/ver1.2/windows-amd64.zip">Windows(Intel 64bit)</a></li>
<li><a href="https://github.com/Uchida16104/XenPi/raw/main/ver1.2/linux-amd64.zip">Linux(Intel 64bit)</a></li>
<li><a href="https://github.com/Uchida16104/XenPi/raw/main/ver1.2/linux-arm.zip">Linux(Raspberry Pi 32bit)</a></li>
<li><a href="https://github.com/Uchida16104/XenPi/raw/main/ver1.2/linux-aarch64.zip">Linux(Raspberry Pi 64bit)</a></li>
</details>


## Install
<details>
  <summary>Process</summary>
  <ol>
    <li>Re-unzip the downloaded .zip file with the contents according to your operating system.</li>
    <li>Then, run the executable file (.exe, .app, .sh), do "Xen.rb" file on Sonic Pi, and do the code of "XenPi.js" after copying and pasting it on hydra (from ver1.2).</li>
  </ol>
</details>

## Usage
<details>
  <summary>Ver1.0</summary>
1. Processing
<ul>
<li>Synth - means value of synth names on Sonic Pi.</li>
<li>Amp - means amp value on Sonic Pi.</li>
<li>Pan - means pan value on Sonic Pi.</li>
<li>Attack - means attack value on Sonic Pi.</li>
<li>Decay - means decay value on Sonic Pi.</li>
<li>Sustain - means sustain value on Sonic Pi.</li>
<li>Release - means release value on Sonic Pi.</li>
<li>Edo - means Edo value on Sonic Pi (Edo means Equal Division of the Octave, and microtonal tuning).</li>
<li>Number - means what number of the microtonal is playing.</li>
<li>Chord - means value of chord names when "Mode" value shows 1.</li>
<li>Scale - means value of scale names when "Mode" value shows 2.</li>
<li>Time - means how much interval separates the sounds.</li>
<li>Mode - means when value 0 is "Note", 1 is "Chord", 2 is "Scale", and can select performance type.</li>
</ul>
2. Sonic Pi
<ul>
<li><i>Just load "Xen.rb" and run it on Sonic Pi as above.</i></li>
</ul>
</details>
<details>
  <summary>Ver1.1</summary>
1. Processing (Additional changes)
<ul>
<li>Effect - means value of effect names on Sonic Pi.</li>
<li>Mix - means value of effect volume.</li>
<li>Division - means the value specified by "Beat" is separated by which value.</li>
<li>Beat - means how many beats to adjust the rhythm.</li>
<li>Step - means how much degree of rhythmic complexity.</li>
<li>Tone - means the kind of bass drum(:bd), snare drum(:sn), and drums(:drums) tone on Sonic Pi.</li>
<li><i>1~8</i> - means the volume of the nth beat.</li>
<li><i><strong>(Deleted function of "Scale" on "Synth" and added to change just like a techno machine compare with ver1.0.)</strong></i></li>
</ul>
2. Sonic Pi
<ul>
<li><i>Just load "Xen.rb" and run it on Sonic Pi as above. <strong>(The file is changed!)</strong></i></li>
</ul>
</details>
<details>
  <summary>Ver1.2</summary>
1. Processing (Additional changes)
<ul>
<li>Group - means the kind of sample.</li>
<li>Order - means the number of sample group.</li>
<li>Speed - means the rate of sample.</li>
<li>Tuning(1~4) - Tuning1 corresponds the tuning of Synth1. Tuning2 corresponds the tuning of Synth2. Tuning3 correspond the beginning tuning of Synth3 and Tuning4 correspond the terminal tuning of Synth3.</li>
<li>Bpm - means to adjust loop(:loop) tempo.</li>
<li>Red - means to adjust the red ratio including background color.</li>
<li>Green - means to adjust the green ratio including background color.</li>
<li>Blue - means to adjust the blue ratio including background color.</li>
</ul>
2. Sonic Pi
<ul>
<li><i>Just load "Xen.rb" and run it on Sonic Pi as above. <strong>(The file is changed!)</strong></i></li>
</ul>
3. Hydra
<ul>
<li><i>Just run "Xen.js" code and run it on Hydra as above.</i></li>
</ul>
</details>
  
## Image
<details>
  <summary>Ver1.0</summary>
<img src="ver1.0/XenPi-P.png"/>
</details>
<details>
  <summary>Ver1.1</summary>
<img src="ver1.1/XenPi-P.png"/>
</details>
<details>
  <summary>Ver1.2</summary>
<img src="ver1.2/XenPi-P.png"/>
</details>

## Log
<details>
  <summary>Developed</summary>
  on 25th, May, 2023
</details>
<details>
  <summary>Published</summary>
  on 26th, May, 2023
</details>
<details>
  <summary>Released</summary>
  on 22nd, June, 2023
</details>
<details>
  <summary>Copyright</summary>
  by Hirotoshi Uchida
</details>
