#talkgh
	tempblock air {MBCoords}
	msg General Hamond: %fWhy Back so early, kernal?
	delay 500
	msg Kernal O'Neill: %fThere was lava EVERYWHERE, sir!
	delay 500
	msg General Hamond: %fTeal'c?
	delay 100
	msg Teal'c: %fIndeed.
	delay 100
	msg General Hamond: %fWe will NEVER go back then.
	delay 500
	msg Kernal O'Neill: %fCan we go home now?
	delay 400
	msg Kernal O'Neill: %fI wanna go fishing.
	delay 400
	msg General Hamond: %fSure.
	quit 
	
#input
	cpemsg bigannounce {runArg1} {runArg2}
	quit
	
#update
	cmd OsUploadScript https://tycho10101.github.io/Assets/stargate.nas
	quit 