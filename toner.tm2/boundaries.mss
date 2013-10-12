// Mapbox admin levels not the same as Natural Earth
@countries_level: 2;
@states_level: 4;

#admin[maritime=0]{
  [admin_level=@countries_level][zoom<6] {
	line-width: 0.6;
	line-color: #000;
  }
}
#admin[maritime=0] {
  [admin_level=@countries_level][zoom>=6] {
	::outline {
		line-color: @land;
		line-width: 3;
	}
    ::inline {
		line-color: #000;
		line-width: 1.2;
		line-dasharray: 3,7;
		line-cap: round;
    }
  }
}

#admin[admin_level=@states_level][maritime=0][zoom>=3][zoom<6] {
	line-width: 0.2;
	line-color: #000;
}

#admin[admin_level=@states_level][maritime=0][zoom=6],
#admin[admin_level=@states_level][maritime=0][zoom=7] {
	line-width: 1.5;
	line-color: #686868;
	line-dasharray: 1,5;
	line-cap: round;
}

#admin[admin_level=@states_level][maritime=0][zoom=8] {
	line-width: 2;
	line-color: #4d4d4d;
	line-dasharray: 1,5;
	line-cap: round;
}

#admin[admin_level=@states_level][maritime=0][zoom=9],
#admin[admin_level=@states_level][maritime=0][zoom>9] {
	line-width: 2.0;
	line-color: #4d4d4d;
	line-dasharray: 1,5;
	line-cap: round;
}