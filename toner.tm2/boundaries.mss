
#admin[zoom=7][maritime=0],
#admin[zoom=8][maritime=0],
#admin[zoom=9][maritime=0] {
	::outline {
		line-color: @land;
		line-width: 3;
	}
	line-color: #000;
	line-width: 1.2;
	line-dasharray: 3,7;
	line-cap: round;
}

#admin[zoom>=3][zoom<6][maritime=0] {
	line-width: 0.2;
	line-color: #000;
}

#admin[zoom=6][maritime=0] {
	line-width: 0.6;
	line-color: #000;
}

#admin[zoom=7][maritime=0] {
	line-width: 1.5;
	line-color: #686868;
	line-dasharray: 1,5;
	line-cap: round;
}

#admin[zoom=8][maritime=0] {
	line-width: 2;
	line-color: #4d4d4d;
	line-dasharray: 1,5;
	line-cap: round;
}

#admin[zoom=9][maritime=0],
#admin[zoom>9][maritime=0] {
	line-width: 2.0;
	line-color: #4d4d4d;
	line-dasharray: 1,5;
	line-cap: round;
}