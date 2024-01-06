#cef
	if started quit
	set started true
	freeze
	ifnot mobile goto #notmobile
	if mobile msg Get a PC, for max compatibility.
	if mobile goto #askplay
	quit 
	
#notmobile
	if webclient msg %aClickerCompatibility.dll: %fDownload the ClassiCube Client, for max compatibility. ( https://classicube.net/ )
	if webclient goto #askplay
	ifnot webclient goto #canhavecef
	quit
	
#canhavecef
	ifnot cef msg %aClickerCompatibility.dll: %fDownload CEF, for max compatibility. ( https://github.com/SpiralP/classicube-cef-loader-plugin )
	ifnot cef goto #askplay
	if cef goto #start
	quit
	
#askplay
	msg %aClickerCompatibility.dll: %fWill you play anyways?
	reply 1|%aY|#start
	reply 2|%mN|#incompatible
	quit

#incompatible
	cmd goto tycho10101+
	quit
	
#start
	msg %cC%ll%ii%cc%fk%ee%rr: %lLoading...
	cpemsg bot3 Loading.
	delay 500
	cpemsg bot3 Loading..
	delay 500
	cpemsg bot3 Loading...
	delay 500
	cpemsg bot3 Loading.
	delay 500
	cpemsg bot3 Loading..
	delay 500
	cpemsg bot3 Loading...
	delay 500
	msg %cC%ll%ii%cc%fk%ee%rr: %lDONE
	msg Map Theme: https://mario-texpack.tycho10101.repl.co/Clicker.mp3
	cpemsg bot3 Loaded!
	cpemsg bot3
	goto #setup
	quit
	
#setup
	set coins 0
	set cpc 1
	set cps 0
	set cpsepochS {epochMS}
	setdiv cpsepochS 1000
	setround cpsepochS
	unfreeze
	goto #gameupdateui
	quit
	
#click
	call #cpsupdate
	setadd coins cpc
	goto #gameupdateui
	quit
	
#cpsupdate
	set Seconds {epochMS}
	setdiv Seconds 1000
	setround Seconds
	setsub Seconds cpsepochS
	setmul Seconds cps
	setadd coins Seconds
	//update
	set cpsepochS {epochMS}
	setdiv cpsepochS 1000
	setround cpsepochS
	quit
	
#gameupdateui
	cpemsg top1 %6Coins:%f {coins}
	cpemsg top2 %6Coins%bPerClick:%f {cpc}
	cpemsg top3 %6Coins%bPerSecond:%f {cps}
	quit
	
#forceupdateui
	call #cpsupdate
	call #gameupdateui
	quit
	
#shop
	call #forceupdateui
	msg %cC%ll%ii%cc%fk%ee%rr: %lBuy how much?
	reply 1|1|#x1
	reply 2|10|#x10
	reply 3|100|#x100
	quit

#x1
	set amount 1
	goto #shop2
	quit

#x10
	set amount 10
	goto #shop2
	quit

#x100
	set amount 100
	goto #shop2
	quit

#shop2
	msg %cC%ll%ii%cc%fk%ee%rr: %lOf what?
	reply 1|%6Coins%bPerClick 10 x {amount} %6Coins|#cpc
	reply 2|%6Coins%bPerSecond 15 x {amount} %6Coins|#cps
	reply 3|Never Mind|#forceupdateui
	quit
	
#cpc
	setmul amount 10
	if coins|>=|amount goto #cpcbuy
	ifnot coins|>=|amount msg %cC%ll%ii%cc%fk%ee%rr: %lLow on Coins
	quit
	
#cpcbuy
	setsub coins amount
	setdiv amount 10
	setadd cpc amount
	goto #gameupdateui
	quit
	
#cps
	setmul amount 15
	if coins|>=|amount goto #cpsbuy
	ifnot coins|>=|amount msg %cC%ll%ii%cc%fk%ee%rr: %lLow on Coins
	quit
	
#cpsbuy
	setsub coins amount
	setdiv amount 15
	setadd cps amount
	goto #gameupdateui
	quit

#update
	cmd OsUploadScript https://mario-texpack.tycho10101.repl.co/click.nas
	quit