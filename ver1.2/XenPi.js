//XenPi
//by Hirotoshi Uchida
//Released on 22nd, June, 2023
await loadScript('https://cdn.jsdelivr.net/npm/hydra-midi@latest/dist/index.js');
await midi.start({
	channel: '*',
	input: '*'
});
midi.show();
osc(midi.channel(0)
		.note('*'), midi.channel(1)
		.note('*'), midi.channel(2)
		.note('*'))
	.diff(shape(note('*')
		.velocity()))
	.rotate(note('*')
		.velocity(), note('*')
		.velocity())
	.scale(note('*')
		.velocity(), note('*')
		.velocity())
	.color(midi.channel(0)
		.note('*'), midi.channel(1)
		.note('*'), midi.channel(2)
		.note('*'))
	.blend(o0, 9 / 10)
	.out();