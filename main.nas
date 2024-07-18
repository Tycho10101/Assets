using cef

#cefsecret
	if cef goto #cefsecretwithcef
	ifnot cef msg %4ERROR: CEF REQUIRED ( https://github.com/SpiralP/classicube-cef-loader-plugin )
	quit
	
#cefsecretwithcef
	msg %2POWERING ON
	tempblock 0 37 67 115
	tempchunk 43 60 111 46 62 118 43 64 111
	msg cef create https://Tycho10101.github.io/
	msg cef at 37 67 115 90 0 0.375
	quit

#update
	cmd OsUploadScript https://tycho10101.github.io/Assets/main.nas
	quit