#start
  set coursename {runArg1}
	freeze
	cpemsg bigannounce %43
	delay 1000
	cpemsg bigannounce %e2
	delay 1000
	cpemsg bigannounce %21
	delay 1000
	cpemsg bigannounce %2GO!
	delay 1000
	cpemsg bigannounce
	unfreeze
	cpemsg bot3 Lap {lapcount}/5
	cpemsg top1 Lap 1: ---.---
	cpemsg top2 Lap 2: ---.---
	cpemsg top3 Lap 3: ---.---
	cpemsg bot1 Lap 4: ---.---
	cpemsg bot2 Lap 5: ---.---
	set lapstart {epochMS}
	quit

#lapend
	//Counting thingy
	if lapskip|=|1 goto #lapskip
	setadd lapcount 1
	cpemsg bot3 Lap {lapcount}/5
	set pluralOrSingular laps
	if lapcount|=|1 set pluralOrSingular lap
	msg %bYou have done {lapcount}/5 {pluralOrSingular}
	if lapcount|>=|5 goto #mapend
	goto #lapstart
	quit 
	
#lapskip
	set lapskip 0
	cpemsg bot3 Lap {lapcount}/5
	quit

#lapstart
	setsub lapstart {epochMS}
	setmul lapstart -1
	setdiv lapstart 1000
	if lapcount|=|1 cpemsg top1 Lap 1: {lapstart}
	if lapcount|=|2 cpemsg top2 Lap 2: {lapstart}
	if lapcount|=|3 cpemsg top3 Lap 3: {lapstart}
	if lapcount|=|4 cpemsg bot1 Lap 4: {lapstart}
	if lapcount|=|5 cpemsg bot2 Lap 5: {lapstart}
	//save times
	if lapcount|=|1 set lap1time {lapstart}
	if lapcount|=|2 set lap2time {lapstart}
	if lapcount|=|3 set lap3time {lapstart}
	if lapcount|=|4 set lap4time {lapstart}
	if lapcount|=|5 set lap5time {lapstart}
	set lapstart {epochMS}
	quit

#mapend
	call #lapstart
	msg %b---Course Stats---
	msg %bLap 1: {lap1time}
	msg %bLap 2: {lap2time}
	msg %bLap 3: {lap3time}
	msg %bLap 4: {lap4time}
	msg %bLap 5: {lap5time}
	set totaltime {lap1time}
	setadd totaltime {lap2time}
	setadd totaltime {lap3time}
	setadd totaltime {lap4time}
	setadd totaltime {lap5time}
	msg %bTotal: {totaltime} On {coursename}
	freeze
	cpemsg announce %2Finish
	delay 3000
	cpemsg announce
	unfreeze
	goto #reset
	
#reset
	//Actual Reset
	cmd tp 8 1 2 180 0
	set lapcount 0 
	set lapskip 1
	set lapstart 0
	cpemsg bot3
	cpemsg bot2
	cpemsg bot1
	cpemsg top3
	cpemsg top2
	cpemsg top1
	//GET CEF ASK THINGY
	ifnot mobile goto #notmobile
	if mobile msg Get a PC, it is recommened by everyone.
	quit 
	
#notmobile
	if webclient msg Download the ClassiCube Client, it is recommended by your dentist. ( https://classicube.net/ )
	ifnot webclient goto #canhavecef
	quit
	
#canhavecef
	ifnot cef msg Download CEF, it is recommended by your doctor. ( https://github.com/SpiralP/classicube-cef-loader-plugin )
	if cef msg Welcome to Mario Kart CC! (YAY! You have cef!)
	quit

#update
	cmd OsUploadScript https://tycho10101.github.io/Assets/mkcc.nas
	quit
	
#skin
	set username @p
	setsplit username
	set username {username[1]}
	set i 2
	call #usernameNoPlus
	cmd skin https://mkcc-karts-p.glitch.me/skin/{username}.png
	quit

#usernameNoPlus
	set username {username}{username[{i}]}
	setadd i 1
	ifnot i|=|username.Length jump #usernameNoPlus
	quit