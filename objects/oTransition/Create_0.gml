//Persistent tiene que estar marcado

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h * 0.5;

enum TRANS_MODE {
	OFF, //==0
	NEXT, //==1
	GOTO, //==2
	RESTART, //==3
	INTRO //==4
}

mode = TRANS_MODE.INTRO;
percent = 1;
target = room;