MIDIClient.init;

m = MIDIOut(0);

(
~mel = Tdef( \mel, {

	inf.do({
		|i|
		var indx;
		m.noteOn(0, 60, 127);
		m.noteOff(0, 60, 127);

		0.5.wait;
	});

})

)

m.control(0, 103, rrand(0, 100));
~mel.play(t);
~mel.stop;

)