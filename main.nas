#cefsecret
	if cef goto #cefsecretwithcef
	ifnot cef msg %4ERROR: CEF REQUIRED
	quit

#cefsecretwithcef
	msg cef create https://Tycho10101.github.io/
	msg cef at 37 67 115 90 0 0.375
	quit

#update
	cmd OsUploadScript https://tycho10101.github.io/Assets/main.nas
	quit