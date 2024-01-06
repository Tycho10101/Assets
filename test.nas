#spawn
	if talk|>|0 quit
	set talk 1
	tempblock air 65 68 60
	freeze
	msg %fWho do you want
	reply 1|Goodly|#goodly
	reply 2|Corran|#corran
	reply 3|Saiko|#saiko
	quit
	
#goodly
	set nick %f┬ %7goodly
	set skin goodlyay
	set name %1goodlyay
	goto #makebot
	quit

#corran
	set nick %u[%1C%3A%9S%u] %1C%9o%3rr%ra%bn
	set skin CorranEveryone
	set name %uCorranEveryone
	goto #makebot
	quit

#saiko
	set nick %6∞ %rsaiko
	set skin okias
	set name %bokias
	goto #makebot
	quit

#makebot
	cmd tempbot add Person 65 66 60 0 0 {skin} {name}
	cmd tempbot model Person sit
	tempblock Speech 65 68 60
	unfreeze
	quit
	
#talk
	//Start with this: {nick}: %f
	tempblock air 65 68 60
	if talk|=|1 call #talk1
	if talk|=|2 call #talk2
	if talk|=|3 call #talk3
	if talk|=|4 call #talk4
	setadd talk 1
	ifnot talk|=|5 tempblock Speech 65 68 60
	quit
	//#talk#	quit
	
#talk1
	msg {nick}: %f*sigh* Where is my Uber?
	delay 2000
	msg {nick}: %fIt's been like 5 Months on this bench!
	delay 5000
	msg {nick}: %fOr was that 5 years?
	quit
	
#talk2
	msg {nick}: %fYep, it is 5 years...
	delay 4000
	msg {nick}: %f...on a bench.
	quit
	
#talk3
	msg {nick}: %fI've been doing nothing, so I don't have anything to say
	quit
	
#talk4
	msg {nick}: %fUGH! LEAVE ME ALONE! *sigh* OK! I'll open Uber up with %bThe U Key%f!
	delay 5000
	msg {nick}: %fOH COME ON!!! IT GOT CANCLED 5 YEARS AGO!!! Can you make me one? I'm out of Uber points.
	definehotkey UberApp|U
	quit
	
#input
	reply 1|Leave him and buy for 1|#bad
	reply 2|bring him and buy for 2|#good
	quit
	
#bad
	msg {nick}: %fNOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO!
	delay 2000
	msg Uber Driver: %fHere's your stop!
	cmd osdir go main tycho10101
	quit
	
#good
	msg {nick}: %fThank you!
	delay 2000
	msg Uber Driver: %fHere's your stop!
	cmd osdir go main tycho10101
	quit
	
#update
	cmd OsUploadScript https://tycho10101.github.io/Assets/test.nas
	quit 