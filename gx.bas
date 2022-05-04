extern "C"
dim shared ccolers as integer=0
public sub colors(c as integer)
ccolers=c
end sub
public sub screens(x as integer,y as integer,colorss as integer)export 
	screenres x,y,colorss
end sub
public sub box(x as integer,y as integer,w as integer,h as integer)export 
	line(x,y)-(x+w,y+h),ccolers,bf
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

