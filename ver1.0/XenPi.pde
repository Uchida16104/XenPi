//XenPi
//Is an application created by Processing and Sonic Pi.
//Also please use this when you play microtonal music performance.
//by Hirotoshi Uchida
//Developed on 25th, May, 2023
import controlP5.*;
import oscP5.*;
import netP5.*;
OscP5 oscP5;
NetAddress SonicPi;
ControlP5 amp;
ControlP5 pan;
ControlP5 attack;
ControlP5 decay;
ControlP5 sustain;
ControlP5 release;
ControlP5 edo;
ControlP5 number;
ControlP5 time;
ControlP5 chord;
ControlP5 scale;
ControlP5 mode;
ControlP5 title;
ControlP5 copyright;
ControlP5 synth;
OscP5 OscMessage;
OscMessage msg;
PFont font1;
PFont font2;
void setup() {
  size(1200, 300);
  smooth();
  oscP5 = new OscP5(this, 12000);
  SonicPi = new NetAddress("127.0.0.1", 4560);
  synth = new ControlP5(this);
  amp = new ControlP5(this);
  pan = new ControlP5(this);
  attack = new ControlP5(this);
  decay = new ControlP5(this);
  sustain = new ControlP5(this);
  release = new ControlP5(this);
  edo = new ControlP5(this);
  number = new ControlP5(this);
  time = new ControlP5(this);
  chord = new ControlP5(this);
  scale = new ControlP5(this);
  mode = new ControlP5(this);
  title = new ControlP5(this);
  copyright = new ControlP5(this);
  font1 = createFont("nasalization",36,true);
  font2 = createFont("nasalization",18,true);
  synth.addSlider("synth")
    .setRange(0,47)
    .setValue(2)
    .setPosition(10,80)
    .setSize(20, 200)
    .setNumberOfTickMarks(48);
  amp.addSlider("amp")
    .setRange(0, 2)
    .setValue(0)
    .setPosition(110, 80)
    .setSize(20, 200)
    .setNumberOfTickMarks(101);
  pan.addSlider("pan")
    .setRange(-1, 1)
    .setValue(0)
    .setPosition(210, 80)
    .setSize(20, 200)
    .setNumberOfTickMarks(101);
  attack.addSlider("attack")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(310, 80)
    .setSize(20, 200)
    .setNumberOfTickMarks(101);
  decay.addSlider("decay")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(410, 80)
    .setSize(20, 200)
    .setNumberOfTickMarks(101);
  sustain.addSlider("sustain")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(510, 80)
    .setSize(20, 200)
    .setNumberOfTickMarks(101);
  release.addSlider("release")
    .setRange(0, 1)
    .setValue(0)
    .setPosition(610, 80)
    .setSize(20, 200)
    .setNumberOfTickMarks(101);
  edo.addSlider("edo")
    .setRange(1, 100)
    .setValue(0)
    .setPosition(710, 80)
    .setSize(20, 200)
    .setNumberOfTickMarks(100);
  number.addSlider("number")
    .setRange(1, 100)
    .setValue(1)
    .setPosition(810, 80)
    .setSize(20, 200)
    .setNumberOfTickMarks(100);
  chord.addSlider("chord")
    .setRange(0, 69)
    .setValue(0)
    .setPosition(910, 80)
    .setSize(20, 200)
    .setNumberOfTickMarks(70);
  scale.addSlider("scale")
    .setRange(0, 150)
    .setValue(0)
    .setPosition(1010, 80)
    .setSize(20, 200)
    .setNumberOfTickMarks(151);
  mode.addSlider("mode")
    .setRange(0, 2)
    .setValue(0)
    .setPosition(505, 20)
    .setSize(200, 20)
    .setNumberOfTickMarks(3);
  time.addSlider("time")
    .setRange(0, 1)
    .setValue(1)
    .setPosition(1110, 80)
    .setSize(20, 200)
    .setNumberOfTickMarks(100);
  title.addTextlabel("title").setText("XenPi").setFont(font1)
    .setPosition(10,10);
  copyright.addTextlabel("copyright").setText("by Hirotoshi Uchida").setFont(font2)
    .setPosition(1000,30);
}
void draw() {
  background(0);
  msg = new OscMessage("/xenpi/synth");
  msg.add(synth.getValue("synth"));
  msg.add(amp.getValue("amp"));
  msg.add(pan.getValue("pan"));
  msg.add(attack.getValue("attack"));
  msg.add(decay.getValue("decay"));
  msg.add(sustain.getValue("sustain"));
  msg.add(release.getValue("release"));
  msg.add(edo.getValue("edo"));
  msg.add(number.getValue("number"));
  msg.add(time.getValue("time"));
  msg.add(chord.getValue("chord"));
  msg.add(scale.getValue("scale"));
  msg.add(mode.getValue("mode"));
  oscP5.send(msg, SonicPi);
}
