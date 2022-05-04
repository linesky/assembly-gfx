extern "C"
public sub screens(x as integer,y as integer,colors as integer)export 
	screenres x,y,colors
end sub
public sub box(x as integer,y as integer,w as integer,h as integer,colors as integer)export 
	line(x,y)-(x+w,y+h),7,bf
end sub
public sub scroff()
	screen 3
end sub
public sub exits()
	system()
end sub 
public sub sleeps(a as integer)
	sleep a*1000
end sub 
end extern

