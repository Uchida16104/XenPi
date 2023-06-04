//XenPi
//Is an application created by Processing and Sonic Pi.
//Also please use this when you play microtonal music performance.
//by Hirotoshi Uchida
//Developed on 25th, May, 2023
//Released on 4th, June, 2023
import controlP5.*;
import oscP5.*;
import netP5.*;
OscP5 oscP5;
NetAddress SonicPi;
ControlP5 amp1;
ControlP5 pan1;
ControlP5 attack1;
ControlP5 decay1;
ControlP5 sustain1;
ControlP5 release1;
ControlP5 edo1;
ControlP5 number1;
ControlP5 time1;
ControlP5 chord1;
ControlP5 division1;
ControlP5 beat1;
ControlP5 step1;
ControlP5 mode1;
ControlP5 tempo;
ControlP5 synth1;
ControlP5 effect1;
ControlP5 mix1;
ControlP5 amp2;
ControlP5 pan2;
ControlP5 attack2;
ControlP5 decay2;
ControlP5 sustain2;
ControlP5 release2;
ControlP5 edo2;
ControlP5 number2;
ControlP5 time2;
ControlP5 chord2;
ControlP5 division2;
ControlP5 beat2;
ControlP5 step2;
ControlP5 mode2;
ControlP5 synth2;
ControlP5 effect2;
ControlP5 mix2;
ControlP5 effect3;
ControlP5 mix3;
ControlP5 bassname;
ControlP5 bassvol1;
ControlP5 bassvol2;
ControlP5 bassvol3;
ControlP5 bassvol4;
ControlP5 bassvol5;
ControlP5 bassvol6;
ControlP5 bassvol7;
ControlP5 bassvol8;
ControlP5 pan3;
ControlP5 attack3;
ControlP5 decay3;
ControlP5 sustain3;
ControlP5 release3;
ControlP5 time3;
ControlP5 effect4;
ControlP5 mix4;
ControlP5 snarename;
ControlP5 snarevol1;
ControlP5 snarevol2;
ControlP5 snarevol3;
ControlP5 snarevol4;
ControlP5 snarevol5;
ControlP5 snarevol6;
ControlP5 snarevol7;
ControlP5 snarevol8;
ControlP5 pan4;
ControlP5 attack4;
ControlP5 decay4;
ControlP5 sustain4;
ControlP5 release4;
ControlP5 time4;
ControlP5 effect5;
ControlP5 mix5;
ControlP5 drumname;
ControlP5 drumvol1;
ControlP5 drumvol2;
ControlP5 drumvol3;
ControlP5 drumvol4;
ControlP5 drumvol5;
ControlP5 drumvol6;
ControlP5 drumvol7;
ControlP5 drumvol8;
ControlP5 pan5;
ControlP5 attack5;
ControlP5 decay5;
ControlP5 sustain5;
ControlP5 release5;
ControlP5 time5;
ControlP5 name1;
ControlP5 name2;
ControlP5 name3;
ControlP5 name4;
ControlP5 name5;
ControlP5 title;
ControlP5 copyright;
OscP5 OscMessage;
OscMessage msg;
PFont font1;
PFont font2;
PFont font3;
void setup() {
  size(850, 800);
  smooth();
  oscP5 = new OscP5(this, 12000);
  SonicPi = new NetAddress("127.0.0.1", 4560);
  synth1 = new ControlP5(this);
  amp1 = new ControlP5(this);
  pan1 = new ControlP5(this);
  attack1 = new ControlP5(this);
  decay1 = new ControlP5(this);
  sustain1 = new ControlP5(this);
  release1 = new ControlP5(this);
  edo1 = new ControlP5(this);
  number1 = new ControlP5(this);
  time1 = new ControlP5(this);
  chord1 = new ControlP5(this);
  division1 = new ControlP5(this);
  beat1 = new ControlP5(this);
  step1 = new ControlP5(this);
  mode1 = new ControlP5(this);
  tempo = new ControlP5(this);
  effect1 = new ControlP5(this);
  mix1 = new ControlP5(this);
  synth2 = new ControlP5(this);
  amp2 = new ControlP5(this);
  pan2 = new ControlP5(this);
  attack2 = new ControlP5(this);
  decay2 = new ControlP5(this);
  sustain2 = new ControlP5(this);
  release2 = new ControlP5(this);
  edo2 = new ControlP5(this);
  number2 = new ControlP5(this);
  time2 = new ControlP5(this);
  chord2 = new ControlP5(this);
  division2 = new ControlP5(this);
  beat2 = new ControlP5(this);
  step2 = new ControlP5(this);
  mode2 = new ControlP5(this);
  effect2 = new ControlP5(this);
  mix2 = new ControlP5(this);
  effect3 = new ControlP5(this);
  mix3 = new ControlP5(this);
  bassname = new ControlP5(this);
  bassvol1 = new ControlP5(this);
  bassvol2 = new ControlP5(this);
  bassvol3 = new ControlP5(this);
  bassvol4 = new ControlP5(this);
  bassvol5 = new ControlP5(this);
  bassvol6 = new ControlP5(this);
  bassvol7 = new ControlP5(this);
  bassvol8 = new ControlP5(this);
  pan3 = new ControlP5(this);
  attack3 = new ControlP5(this);
  decay3 = new ControlP5(this);
  sustain3 = new ControlP5(this);
  release3 = new ControlP5(this);
  time3 = new ControlP5(this);
  effect4 = new ControlP5(this);
  mix4 = new ControlP5(this);
  snarename = new ControlP5(this);
  snarevol1 = new ControlP5(this);
  snarevol2 = new ControlP5(this);
  snarevol3 = new ControlP5(this);
  snarevol4 = new ControlP5(this);
  snarevol5 = new ControlP5(this);
  snarevol6 = new ControlP5(this);
  snarevol7 = new ControlP5(this);
  snarevol8 = new ControlP5(this);
  pan4 = new ControlP5(this);
  attack4 = new ControlP5(this);
  decay4 = new ControlP5(this);
  sustain4 = new ControlP5(this);
  release4 = new ControlP5(this);
  time4 = new ControlP5(this);
  effect5 = new ControlP5(this);
  mix5 = new ControlP5(this);
  drumname = new ControlP5(this);
  drumvol1 = new ControlP5(this);
  drumvol2 = new ControlP5(this);
  drumvol3 = new ControlP5(this);
  drumvol4 = new ControlP5(this);
  drumvol5 = new ControlP5(this);
  drumvol6 = new ControlP5(this);
  drumvol7 = new ControlP5(this);
  drumvol8 = new ControlP5(this);
  pan5 = new ControlP5(this);
  attack5 = new ControlP5(this);
  decay5 = new ControlP5(this);
  sustain5 = new ControlP5(this);
  release5 = new ControlP5(this);
  time5 = new ControlP5(this);
  name1 = new ControlP5(this);
  name2 = new ControlP5(this);
  name3 = new ControlP5(this);
  name4 = new ControlP5(this);
  name5 = new ControlP5(this);
  title = new ControlP5(this);
  copyright = new ControlP5(this);
  font1 = createFont("nasalization",36,true);
  font2 = createFont("nasalization",18,true);
  font3 = createFont("nasalization",12,true);
  synth1.addSlider("synth")
    .setRange(0,47)
    .setValue(2)
    .setPosition(160,80)
    .setSize(20, 100)
    .setNumberOfTickMarks(48);
  amp1.addSlider("amp")
    .setRange(0, 2)
    .setValue(0)
    .setPosition(210, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  pan1.addSlider("pan")
    .setRange(-1, 1)
    .setValue(0)
    .setPosition(260, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  attack1.addSlider("attack")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(310, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  decay1.addSlider("decay")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(360, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  sustain1.addSlider("sustain")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(410, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  release1.addSlider("release")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(460, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  edo1.addSlider("edo")
    .setRange(1, 100)
    .setValue(0)
    .setPosition(510, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(100);
  number1.addSlider("number")
    .setRange(1, 100)
    .setValue(1)
    .setPosition(560, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(100);
  chord1.addSlider("chord")
    .setRange(0, 69)
    .setValue(0)
    .setPosition(610, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(70);
  division1.addSlider("division")
    .setRange(1, 16)
    .setValue(1)
    .setPosition(660, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(16);
  beat1.addSlider("beat")
    .setRange(1, 16)
    .setValue(1)
    .setPosition(710, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(16);
  step1.addSlider("step")
    .setRange(1, 16)
    .setValue(1)
    .setPosition(760, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(16);
  mode1.addSlider("mode")
    .setRange(0, 2)
    .setValue(0)
    .setPosition(10, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(3);
  tempo.addSlider("tempo")
    .setRange(0,240)
    .setValue(60)
    .setPosition(375, 20)
    .setSize(100,20)
    .setNumberOfTickMarks(61);
  time1.addSlider("time")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(810, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(100);
  effect1.addSlider("effect")
    .setRange(0, 41)
    .setValue(0)
    .setPosition(60, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(42);
  mix1.addSlider("mix")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(110, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  synth2.addSlider("synth")
    .setRange(0,47)
    .setValue(2)
    .setPosition(160,220)
    .setSize(20, 100)
    .setNumberOfTickMarks(48);
  amp2.addSlider("amp")
    .setRange(0, 2)
    .setValue(0)
    .setPosition(210, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  pan2.addSlider("pan")
    .setRange(-1, 1)
    .setValue(0)
    .setPosition(260, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  attack2.addSlider("attack")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(310, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  decay2.addSlider("decay")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(360, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  sustain2.addSlider("sustain")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(410, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  release2.addSlider("release")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(460, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  edo2.addSlider("edo")
    .setRange(1, 100)
    .setValue(0)
    .setPosition(510, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(100);
  number2.addSlider("number")
    .setRange(1, 100)
    .setValue(1)
    .setPosition(560, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(100);
  chord2.addSlider("chord")
    .setRange(0, 69)
    .setValue(0)
    .setPosition(610, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(70);
  division2.addSlider("division")
    .setRange(1, 16)
    .setValue(1)
    .setPosition(660, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(16);
  beat2.addSlider("beat")
    .setRange(1, 16)
    .setValue(1)
    .setPosition(710, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(16);
  step2.addSlider("step")
    .setRange(1, 16)
    .setValue(1)
    .setPosition(760, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(16);
  mode2.addSlider("mode")
    .setRange(0, 2)
    .setValue(0)
    .setPosition(10, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(3);
  time2.addSlider("time")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(810, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(100);
  effect2.addSlider("effect")
    .setRange(0, 41)
    .setValue(0)
    .setPosition(60, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(42);
  mix2.addSlider("mix")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(110, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  effect3.addSlider("effect")
    .setRange(0, 41)
    .setValue(0)
    .setPosition(10, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(42);
  mix3.addSlider("mix")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(60, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  bassname.addSlider("tone")
    .setRange(0, 12)
    .setValue(0)
    .setPosition(110, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(13);
  bassvol1.addSlider("1")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(160, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  bassvol2.addSlider("2")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(210, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  bassvol3.addSlider("3")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(260, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  bassvol4.addSlider("4")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(310, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  bassvol5.addSlider("5")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(360, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  bassvol6.addSlider("6")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(410, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  bassvol7.addSlider("7")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(460, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  bassvol8.addSlider("8")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(510, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  pan3.addSlider("pan")
    .setRange(-1,1)
    .setPosition(560,360)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  attack3.addSlider("attack")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(610, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  decay3.addSlider("decay")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(660, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  sustain3.addSlider("sustain")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(710, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  release3.addSlider("release")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(760, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  time3.addSlider("time")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(810, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(100);
  effect4.addSlider("effect")
    .setRange(0, 41)
    .setValue(0)
    .setPosition(10, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(42);
  mix4.addSlider("mix")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(60, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  snarename.addSlider("tone")
    .setRange(0, 3)
    .setValue(0)
    .setPosition(110, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(4);
  snarevol1.addSlider("1")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(160, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  snarevol2.addSlider("2")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(210, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  snarevol3.addSlider("3")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(260, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  snarevol4.addSlider("4")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(310, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  snarevol5.addSlider("5")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(360, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  snarevol6.addSlider("6")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(410, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  snarevol7.addSlider("7")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(460, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  snarevol8.addSlider("8")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(510, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  pan4.addSlider("pan")
    .setRange(-1,1)
    .setPosition(560,500)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  attack4.addSlider("attack")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(610, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  decay4.addSlider("decay")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(660, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  sustain4.addSlider("sustain")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(710, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  release4.addSlider("release")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(760, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  time4.addSlider("time")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(810, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(100);
  effect5.addSlider("effect")
    .setRange(0, 41)
    .setValue(0)
    .setPosition(10, 640)
    .setSize(20, 100)
    .setNumberOfTickMarks(42);
  mix5.addSlider("mix")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(60, 640)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  drumname.addSlider("tone")
    .setRange(0, 19)
    .setValue(0)
    .setPosition(110, 640)
    .setSize(20, 100)
    .setNumberOfTickMarks(20);
  drumvol1.addSlider("1")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(160, 640)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  drumvol2.addSlider("2")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(210, 640)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  drumvol3.addSlider("3")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(260, 640)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  drumvol4.addSlider("4")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(310, 640)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  drumvol5.addSlider("5")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(360, 640)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  drumvol6.addSlider("6")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(410, 640)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  drumvol7.addSlider("7")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(460, 640)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  drumvol8.addSlider("8")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(510, 640)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  pan5.addSlider("pan")
    .setRange(-1,1)
    .setPosition(560,640)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  attack5.addSlider("attack")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(610, 640)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  decay5.addSlider("decay")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(660, 640)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  sustain5.addSlider("sustain")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(710, 640)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  release5.addSlider("release")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(760, 640)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  time5.addSlider("time")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(810, 640)
    .setSize(20, 100)
    .setNumberOfTickMarks(100);
  title.addTextlabel("title").setText("XenPi").setFont(font1)
    .setPosition(10,10);
  name1.addTextlabel("synth1").setText("synth1").setFont(font3)
    .setPosition(400,60);
  name2.addTextlabel("synth2").setText("synth2").setFont(font3)
    .setPosition(400,200);
  name3.addTextlabel("bass").setText("bass").setFont(font3)
    .setPosition(400,340);
  name4.addTextlabel("snare").setText("snare").setFont(font3)
    .setPosition(400,480);
  name5.addTextlabel("drum").setText("drum").setFont(font3)
    .setPosition(400,620);
  copyright.addTextlabel("copyright").setText("by Hirotoshi Uchida").setFont(font2)
    .setPosition(660,30);
}

void draw() {
  background(0);
  msg = new OscMessage("/xenpi/synth");
  msg.add(synth1.getValue("synth"));
  msg.add(amp1.getValue("amp"));
  msg.add(pan1.getValue("pan"));
  msg.add(attack1.getValue("attack"));
  msg.add(decay1.getValue("decay"));
  msg.add(sustain1.getValue("sustain"));
  msg.add(release1.getValue("release"));
  msg.add(edo1.getValue("edo"));
  msg.add(number1.getValue("number"));
  msg.add(chord1.getValue("chord"));
  msg.add(division1.getValue("division"));
  msg.add(beat1.getValue("beat"));
  msg.add(step1.getValue("step"));
  msg.add(time1.getValue("time"));
  msg.add(mode1.getValue("mode"));
  msg.add(tempo.getValue("tempo"));
  msg.add(effect1.getValue("effect"));
  msg.add(mix1.getValue("mix"));
  msg.add(synth2.getValue("synth"));
  msg.add(amp2.getValue("amp"));
  msg.add(pan2.getValue("pan"));
  msg.add(attack2.getValue("attack"));
  msg.add(decay2.getValue("decay"));
  msg.add(sustain2.getValue("sustain"));
  msg.add(release2.getValue("release"));
  msg.add(edo2.getValue("edo"));
  msg.add(number2.getValue("number"));
  msg.add(chord2.getValue("chord"));
  msg.add(division2.getValue("division"));
  msg.add(beat2.getValue("beat"));
  msg.add(step2.getValue("step"));
  msg.add(time2.getValue("time"));
  msg.add(mode2.getValue("mode"));
  msg.add(effect2.getValue("effect"));
  msg.add(mix2.getValue("mix"));
  msg.add(effect3.getValue("effect"));
  msg.add(mix3.getValue("mix"));
  msg.add(bassname.getValue("tone"));
  msg.add(bassvol1.getValue("1"));
  msg.add(bassvol2.getValue("2"));
  msg.add(bassvol3.getValue("3"));
  msg.add(bassvol4.getValue("4"));
  msg.add(bassvol5.getValue("5"));
  msg.add(bassvol6.getValue("6"));
  msg.add(bassvol7.getValue("7"));
  msg.add(bassvol8.getValue("8"));
  msg.add(pan3.getValue("pan"));
  msg.add(attack3.getValue("attack"));
  msg.add(decay3.getValue("decay"));
  msg.add(sustain3.getValue("sustain"));
  msg.add(release3.getValue("release"));
  msg.add(time3.getValue("time"));
  msg.add(effect4.getValue("effect"));
  msg.add(mix4.getValue("mix"));
  msg.add(snarename.getValue("tone"));
  msg.add(snarevol1.getValue("1"));
  msg.add(snarevol2.getValue("2"));
  msg.add(snarevol3.getValue("3"));
  msg.add(snarevol4.getValue("4"));
  msg.add(snarevol5.getValue("5"));
  msg.add(snarevol6.getValue("6"));
  msg.add(snarevol7.getValue("7"));
  msg.add(snarevol8.getValue("8"));
  msg.add(pan4.getValue("pan"));
  msg.add(attack4.getValue("attack"));
  msg.add(decay4.getValue("decay"));
  msg.add(sustain4.getValue("sustain"));
  msg.add(release4.getValue("release"));
  msg.add(time4.getValue("time"));
  msg.add(effect5.getValue("effect"));
  msg.add(mix5.getValue("mix"));
  msg.add(drumname.getValue("tone"));
  msg.add(drumvol1.getValue("1"));
  msg.add(drumvol2.getValue("2"));
  msg.add(drumvol3.getValue("3"));
  msg.add(drumvol4.getValue("4"));
  msg.add(drumvol5.getValue("5"));
  msg.add(drumvol6.getValue("6"));
  msg.add(drumvol7.getValue("7"));
  msg.add(drumvol8.getValue("8"));
  msg.add(pan5.getValue("pan"));
  msg.add(attack5.getValue("attack"));
  msg.add(decay5.getValue("decay"));
  msg.add(sustain5.getValue("sustain"));
  msg.add(release5.getValue("release"));
  msg.add(time5.getValue("time"));
  oscP5.send(msg, SonicPi);
}
