#start
	msg %7<Script> %9[%mTAS%9] %4Tycho%210101:%f Sooooo... Yea, some maps have gotten deleted (reasons will be in the (!)> blocks in front of it)
	ifnot mobile goto #notmobile
	if mobile msg Get a PC, it is recommended for good gameplay.
	quit 
	
#notmobile
	if webclient msg Download the ClassiCube Client, it is recommended for good speeds. (Classicube can literally run on ANYTHING)
	ifnot webclient goto #canhavecef
	quit
	
#canhavecef
	ifnot cef msg Download CEF, it is recommended for music. ( https://github.com/SpiralP/classicube-cef-loader-plugin )
	if cef goto #askmodel
	quit

#update
	cmd OsUploadScript https://tycho10101.github.io/Assets/main.nas
	quit

#askmodel
	msg %7<Script> %9[%mTAS%9] %4Tycho%210101:%f Do you want to see my models?
	reply 1|%7You:%f Sure!|#yesmodel
	reply 2|%7You:%f No.|#nomodel
	reply 3|%7You:%f Can you elaborate?|#elaboratemodel
	quit
	
#yesmodel
	msg %7<Script> %9[%mTAS%9] %4Tycho%210101:%f Do
	msg /cm goto Tycho10101
	msg %fto see my models
	quit
	
#nomodel
	msg %7<Script> %9[%mTAS%9] %4Tycho%210101:%f Have fun!
	quit
	
#elaboratemodel
  msg %7<Script> %9[%mTAS%9] %4Tycho%210101:%f So what I mean is "Do you want to see my models that I use in my projects?" and yes, they will be skined
	reply 1|%7You:%f Sure!|#yesmodel
	reply 2|%7You:%f No.|#nomodel
	quit