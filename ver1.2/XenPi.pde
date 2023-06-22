//XenPi
//Is an application created by Processing and Sonic Pi.
//Also please use this when you play microtonal music performance.
//by Hirotoshi Uchida
//Developed on 25th, May, 2023
//Released on 22nd, June, 2023
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
ControlP5 name6;
ControlP5 name7;
ControlP5 name8;
ControlP5 group;
ControlP5 order;
ControlP5 speed;
ControlP5 amp3;
ControlP5 beg;
ControlP5 fin;
ControlP5 effect6;
ControlP5 mix6;
ControlP5 pan6;
ControlP5 tuning1;
ControlP5 tuning2;
ControlP5 tuning3;
ControlP5 edo3;
ControlP5 number3;
ControlP5 tuning4;
ControlP5 edo4;
ControlP5 number4;
ControlP5 effect7;
ControlP5 mix7;
ControlP5 mode3;
ControlP5 synth3;
ControlP5 chord3;
ControlP5 time6;
ControlP5 chord4;
ControlP5 effect8;
ControlP5 mix8;
ControlP5 loopname;
ControlP5 amp4;
ControlP5 pan7;
ControlP5 attack6;
ControlP5 decay6;
ControlP5 sustain6;
ControlP5 release6;
ControlP5 amp5;
ControlP5 pan8;
ControlP5 bpm;
ControlP5 title;
ControlP5 background;
ControlP5 copyright;
ControlP5 r;
ControlP5 g;
ControlP5 b;
OscP5 OscMessage;
OscMessage msg;
PFont font1;
PFont font2;
PFont font3;
PFont font4;
void setup() {
  size(1100, 620);
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
  name6 = new ControlP5(this);
  name7 = new ControlP5(this);
  name8 = new ControlP5(this);
  group = new ControlP5(this);
  order = new ControlP5(this);
  speed = new ControlP5(this);
  amp3 = new ControlP5(this);
  beg = new ControlP5(this);
  fin = new ControlP5(this);
  effect6 = new ControlP5(this);
  mix6 = new ControlP5(this);
  pan6 = new ControlP5(this);
  tuning1 = new ControlP5(this);
  tuning2 = new ControlP5(this);
  tuning3 = new ControlP5(this);
  edo3 = new ControlP5(this);
  number3 = new ControlP5(this);
  tuning4 = new ControlP5(this);
  edo4 = new ControlP5(this);
  number4 = new ControlP5(this);
  effect7 = new ControlP5(this);
  mix7 = new ControlP5(this);
  mode3 = new ControlP5(this);
  synth3 = new ControlP5(this);
  chord3 = new ControlP5(this);
  time6 = new ControlP5(this);
  chord4 = new ControlP5(this);
  effect8 = new ControlP5(this);
  mix8 = new ControlP5(this);
  loopname = new ControlP5(this);
  amp4 = new ControlP5(this);
  pan7 = new ControlP5(this);
  attack6 = new ControlP5(this);
  decay6 = new ControlP5(this);
  sustain6 = new ControlP5(this);
  release6 = new ControlP5(this);
  amp5 = new ControlP5(this);
  pan8 = new ControlP5(this);
  bpm = new ControlP5(this);
  title = new ControlP5(this);
  background = new ControlP5(this);
  copyright = new ControlP5(this);
  r = new ControlP5(this);
  g = new ControlP5(this);
  b = new ControlP5(this);
  font1 = createFont("nasalization",36,true);
  font2 = createFont("nasalization",18,true);
  font3 = createFont("nasalization",12,true);
  font4 = createFont("nasalization",15,true);
  mode1.addSlider("mode")
    .setRange(0, 2)
    .setValue(0)
    .setPosition(10, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(3);
  synth1.addSlider("synth")
    .setRange(0, 47)
    .setValue(2)
    .setPosition(60, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(48);
  effect1.addSlider("effect")
    .setRange(0,41)
    .setValue(0)
    .setPosition(110,80)
    .setSize(20, 100)
    .setNumberOfTickMarks(42);
  time1.addKnob("time")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(160, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(100);
  mix1.addKnob("mix")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(160, 150)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  amp1.addKnob("amp")
    .setRange(0, 2)
    .setValue(0)
    .setPosition(210, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  pan1.addKnob("pan")
    .setRange(-1, 1)
    .setValue(0)
    .setPosition(210, 150)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  number1.addKnob("number")
    .setRange(1, 100)
    .setValue(1)
    .setPosition(260, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(100);
  edo1.addKnob("edo")
    .setRange(1, 100)
    .setValue(0)
    .setPosition(260, 150)
    .setSize(20, 100)
    .setNumberOfTickMarks(100);
  chord1.addKnob("chord")
    .setRange(0, 69)
    .setValue(0)
    .setPosition(310, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(70);
  step1.addKnob("step")
    .setRange(1, 16)
    .setValue(1)
    .setPosition(310, 150)
    .setSize(20, 100)
    .setNumberOfTickMarks(16);
  division1.addKnob("division")
    .setRange(1, 16)
    .setValue(1)
    .setPosition(360, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(16);
  beat1.addKnob("beat")
    .setRange(1, 16)
    .setValue(1)
    .setPosition(360, 150)
    .setSize(20, 100)
    .setNumberOfTickMarks(16);
  attack1.addKnob("attack")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(410, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  decay1.addKnob("decay")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(410, 150)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  sustain1.addKnob("sustain")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(460, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  release1.addKnob("release")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(460, 150)
    .setSize(20, 100)
    .setNumberOfTickMarks(101); 
  mode2.addSlider("mode")
    .setRange(0, 2)
    .setValue(0)
    .setPosition(10, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(3);
  synth2.addSlider("synth")
    .setRange(0, 47)
    .setValue(2)
    .setPosition(60, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(48);
  effect2.addSlider("effect")
    .setRange(0,41)
    .setValue(0)
    .setPosition(110,220)
    .setSize(20, 100)
    .setNumberOfTickMarks(42);
  time2.addKnob("time")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(160, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(100);
  mix2.addKnob("mix")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(160, 290)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  amp2.addKnob("amp")
    .setRange(0, 2)
    .setValue(0)
    .setPosition(210, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  pan2.addKnob("pan")
    .setRange(-1, 1)
    .setValue(0)
    .setPosition(210, 290)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  number2.addKnob("number")
    .setRange(1, 100)
    .setValue(1)
    .setPosition(260, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(100);
  edo2.addKnob("edo")
    .setRange(1, 100)
    .setValue(0)
    .setPosition(260, 290)
    .setSize(20, 100)
    .setNumberOfTickMarks(100);
  chord2.addKnob("chord")
    .setRange(0, 69)
    .setValue(0)
    .setPosition(310, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(70);
  step2.addKnob("step")
    .setRange(1, 16)
    .setValue(1)
    .setPosition(310, 290)
    .setSize(20, 100)
    .setNumberOfTickMarks(16);
  division2.addKnob("division")
    .setRange(1, 16)
    .setValue(1)
    .setPosition(360, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(16);
  beat2.addKnob("beat")
    .setRange(1, 16)
    .setValue(1)
    .setPosition(360, 290)
    .setSize(20, 100)
    .setNumberOfTickMarks(16);
  attack2.addKnob("attack")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(410, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  decay2.addKnob("decay")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(410, 290)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  sustain2.addKnob("sustain")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(460, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  release2.addKnob("release")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(460, 290)
    .setSize(20, 100)
    .setNumberOfTickMarks(101); 
  bassname.addSlider("tone")
    .setRange(0, 12)
    .setValue(0)
    .setPosition(610, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(13);
  pan3.addSlider("pan")
    .setRange(-1,1)
    .setPosition(660,80)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  effect3.addSlider("effect")
    .setRange(0, 41)
    .setValue(0)
    .setPosition(710, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(42);
  time3.addKnob("time")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(760, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(100);
  mix3.addKnob("mix")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(760, 150)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  bassvol1.addKnob("1")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(810, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  bassvol2.addKnob("2")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(860, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  bassvol3.addKnob("3")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(910, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  bassvol4.addKnob("4")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(960, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  bassvol5.addKnob("5")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(810, 150)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  bassvol6.addKnob("6")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(860, 150)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  bassvol7.addKnob("7")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(910, 150)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  bassvol8.addKnob("8")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(960, 150)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  attack3.addKnob("attack")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(1010, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  decay3.addKnob("decay")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(1010, 150)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  sustain3.addKnob("sustain")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(1060, 80)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  release3.addKnob("release")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(1060, 150)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);  
  snarename.addSlider("tone")
    .setRange(0, 12)
    .setValue(0)
    .setPosition(610, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(13);
  pan4.addSlider("pan")
    .setRange(-1,1)
    .setPosition(660,220)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  effect4.addSlider("effect")
    .setRange(0, 41)
    .setValue(0)
    .setPosition(710, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(42);
  time4.addKnob("time")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(760, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(100);
  mix4.addKnob("mix")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(760, 290)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  snarevol1.addKnob("1")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(810, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  snarevol2.addKnob("2")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(860, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  snarevol3.addKnob("3")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(910, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  snarevol4.addKnob("4")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(960, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  snarevol5.addKnob("5")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(810, 290)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  snarevol6.addKnob("6")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(860, 290)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  snarevol7.addKnob("7")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(910, 290)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  snarevol8.addKnob("8")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(960, 290)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  attack4.addKnob("attack")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(1010, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  decay4.addKnob("decay")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(1010, 290)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  sustain4.addKnob("sustain")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(1060, 220)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  release4.addKnob("release")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(1060, 290)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  drumname.addSlider("tone")
    .setRange(0, 12)
    .setValue(0)
    .setPosition(610, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(13);
  pan5.addSlider("pan")
    .setRange(-1,1)
    .setPosition(660,360)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  effect5.addSlider("effect")
    .setRange(0, 41)
    .setValue(0)
    .setPosition(710, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(42);
  time5.addKnob("time")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(760, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(100);
  mix5.addKnob("mix")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(760, 430)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  drumvol1.addKnob("1")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(810, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  drumvol2.addKnob("2")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(860, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  drumvol3.addKnob("3")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(910, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  drumvol4.addKnob("4")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(960, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  drumvol5.addKnob("5")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(810, 430)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  drumvol6.addKnob("6")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(860, 430)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  drumvol7.addKnob("7")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(910, 430)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  drumvol8.addKnob("8")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(960, 430)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  attack5.addKnob("attack")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(1010, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  decay5.addKnob("decay")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(1010, 430)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  sustain5.addKnob("sustain")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(1060, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  release5.addKnob("release")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(1060, 430)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  group.addSlider("group")
    .setRange(0, 13)
    .setValue(0)
    .setPosition(10, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(14);
  order.addSlider("order")
    .setRange(0, 25)
    .setValue(0)
    .setPosition(60, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(26);
  effect6.addSlider("effect")
    .setRange(0, 41)
    .setValue(0)
    .setPosition(110, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(42);
  speed.addKnob("speed")
    .setRange(-1, 1)
    .setValue(1)
    .setPosition(160, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(201);
  mix6.addKnob("mix")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(160, 570)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  amp3.addKnob("amp")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(210, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  pan6.addKnob("pan")
    .setRange(-1, 1)
    .setValue(0)
    .setPosition(210, 570)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  beg.addKnob("start")
    .setRange(-12, 12)
    .setValue(0)
    .setPosition(260, 500)
    .setSize(20, 20)
    .setNumberOfTickMarks(25);
  fin.addKnob("finish")
    .setRange(-12, 12)
    .setValue(12)
    .setPosition(260, 570)
    .setSize(20, 20)
    .setNumberOfTickMarks(25);
  tuning1.addSlider("tuning1")
    .setRange(380, 480)
    .setValue(440)
    .setPosition(310, 500)
    .setSize(50, 20)
    .setNumberOfTickMarks(101);
  tuning2.addSlider("tuning2")
    .setRange(380, 480)
    .setValue(440)
    .setPosition(310, 570)
    .setSize(50, 20)
    .setNumberOfTickMarks(101);
  tuning3.addSlider("tuning3")
    .setRange(380, 480)
    .setValue(440)
    .setPosition(410, 500)
    .setSize(50, 20)
    .setNumberOfTickMarks(101);
  number3.addKnob("number")
    .setRange(1, 100)
    .setValue(1)
    .setPosition(260, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(100);
  edo3.addKnob("edo")
    .setRange(1, 100)
    .setValue(1)
    .setPosition(260, 430)
    .setSize(20, 100)
    .setNumberOfTickMarks(100);
  tuning4.addSlider("tuning4")
    .setRange(380, 480)
    .setValue(440)
    .setPosition(410, 570)
    .setSize(50, 20)
    .setNumberOfTickMarks(101);
  number4.addKnob("number")
    .setRange(1, 100)
    .setValue(1)
    .setPosition(310, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(100);
  edo4.addKnob("edo")
    .setRange(1, 100)
    .setValue(1)
    .setPosition(310, 430)
    .setSize(20, 100)
    .setNumberOfTickMarks(100);
  effect7.addSlider("effect")
    .setRange(0,41)
    .setValue(0)
    .setPosition(110,360)
    .setSize(20, 100)
    .setNumberOfTickMarks(42);
  mix7.addKnob("mix")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(160, 430)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  mode3.addSlider("mode")
    .setRange(0, 2)
    .setValue(0)
    .setPosition(10, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(3);
  synth3.addSlider("synth")
    .setRange(0, 47)
    .setValue(2)
    .setPosition(60, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(48);
  chord3.addKnob("chord")
    .setRange(0, 69)
    .setValue(0)
    .setPosition(360, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(70);
  time6.addKnob("time")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(160, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(100);
  chord4.addKnob("chord")
    .setRange(0, 69)
    .setValue(0)
    .setPosition(360, 430)
    .setSize(20, 100)
    .setNumberOfTickMarks(70);
  effect8.addSlider("effect")
    .setRange(0,41)
    .setValue(0)
    .setPosition(710,500)
    .setSize(20, 100)
    .setNumberOfTickMarks(42);
  mix8.addKnob("mix")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(760, 570)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  loopname.addSlider("tone")
    .setRange(0, 16)
    .setValue(0)
    .setPosition(610, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(17);
  amp4.addKnob("amp")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(760, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  pan7.addSlider("pan")
    .setRange(-1,1)
    .setPosition(660,500)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  attack6.addSlider("attack")
    .setRange(0, 10)
    .setValue(1)
    .setPosition(810, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  decay6.addSlider("decay")
    .setRange(0, 10)
    .setValue(1)
    .setPosition(860, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  sustain6.addSlider("sustain")
    .setRange(0, 10)
    .setValue(1)
    .setPosition(910, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  release6.addSlider("release")
    .setRange(0, 10)
    .setValue(1)
    .setPosition(960, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  bpm.addSlider("bpm")
    .setRange(0, 240)
    .setValue(60)
    .setPosition(1010, 500)
    .setSize(20, 100)
    .setNumberOfTickMarks(61);
  amp5.addKnob("amp")
    .setRange(0, 5)
    .setValue(0)
    .setPosition(210, 360)
    .setSize(20, 100)
    .setNumberOfTickMarks(21);
  pan8.addKnob("pan")
    .setRange(-1,1)
    .setPosition(210, 430)
    .setSize(20, 100)
    .setNumberOfTickMarks(101);
  tempo.addSlider("tempo")
    .setRange(0,240)
    .setValue(60)
    .setPosition(540, 500)
    .setSize(20,100)
    .setNumberOfTickMarks(61);
  r.addKnob("red")
    .setRange(0, 255)
    .setValue(0)
    .setPosition(540, 115)
    .setSize(20, 100)
    .setNumberOfTickMarks(256);
  g.addKnob("green")
    .setRange(0, 255)
    .setValue(0)
    .setPosition(540, 255)
    .setSize(20, 100)
    .setNumberOfTickMarks(256);
  b.addKnob("blue")
    .setRange(0, 255)
    .setValue(0)
    .setPosition(540, 395)
    .setSize(20, 100)
    .setNumberOfTickMarks(256);
  title.addTextlabel("title").setText("XenPi").setFont(font1)
    .setPosition(10,10);
  name1.addTextlabel("synth1").setText("synth1").setFont(font3)
    .setPosition(250,60);
  name2.addTextlabel("synth2").setText("synth2").setFont(font3)
    .setPosition(250,200);
  name3.addTextlabel("bass").setText("bass").setFont(font3)
    .setPosition(850,60);
  name4.addTextlabel("snare").setText("snare").setFont(font3)
    .setPosition(850,200);
  name5.addTextlabel("drum").setText("drum").setFont(font3)
    .setPosition(850,340);
  name6.addTextlabel("sample").setText("sample").setFont(font3)
    .setPosition(250,480);
  name7.addTextlabel("synth3").setText("synth3").setFont(font3)
    .setPosition(250,340);
  name8.addTextlabel("loop").setText("loop").setFont(font3)
    .setPosition(850,480);
  background.addTextlabel("background color").setText("background color").setFont(font4)
    .setPosition(485,30);
  copyright.addTextlabel("copyright").setText("by Hirotoshi Uchida").setFont(font2)
    .setPosition(900,30);
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
  msg.add(group.getValue("group"));
  msg.add(order.getValue("order"));
  msg.add(speed.getValue("speed"));
  msg.add(amp3.getValue("amp"));
  msg.add(beg.getValue("start"));
  msg.add(fin.getValue("finish"));
  msg.add(tuning1.getValue("tuning1"));
  msg.add(tuning2.getValue("tuning2"));
  msg.add(effect6.getValue("effect"));
  msg.add(mix6.getValue("mix"));
  msg.add(pan6.getValue("pan"));
  msg.add(tuning3.getValue("tuning3"));
  msg.add(edo3.getValue("edo"));
  msg.add(number3.getValue("number"));
  msg.add(tuning4.getValue("tuning4"));
  msg.add(edo4.getValue("edo"));
  msg.add(number4.getValue("number"));
  msg.add(effect7.getValue("effect"));
  msg.add(mix7.getValue("mix"));
  msg.add(mode3.getValue("mode"));
  msg.add(synth3.getValue("synth"));
  msg.add(chord3.getValue("chord"));
  msg.add(time6.getValue("time"));
  msg.add(chord4.getValue("chord"));
  msg.add(effect8.getValue("effect"));
  msg.add(mix8.getValue("mix"));
  msg.add(loopname.getValue("tone"));
  msg.add(amp4.getValue("amp"));
  msg.add(pan7.getValue("pan"));
  msg.add(attack6.getValue("attack"));
  msg.add(decay6.getValue("decay"));
  msg.add(sustain6.getValue("sustain"));
  msg.add(release6.getValue("release"));
  msg.add(amp5.getValue("amp"));
  msg.add(pan8.getValue("pan"));
  msg.add(bpm.getValue("bpm"));
  background(r.getValue("red"),g.getValue("green"),b.getValue("blue"));
  oscP5.send(msg, SonicPi);
}
