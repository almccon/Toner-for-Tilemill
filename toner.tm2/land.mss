Map { /* the ocean */
	background-color: @land; // Instead of @water
}

// Instead of land, use water
#water {
  polygon-fill: @water;
}

#waterway {
  [type='river'],
  [type='canal'] {
    line-color: @water;
    line-width: 0.5;
    [zoom>=12] { line-width: 1; }
    [zoom>=14] { line-width: 2; }
    [zoom>=16] { line-width: 3; }
  }
  [type='stream'] {
    line-color: @water;
    line-width: 0.5;
    [zoom>=14] { line-width: 1; }
    [zoom>=16] { line-width: 2; }
    [zoom>=18] { line-width: 3; }
  }
}

/* buildings */
#building[zoom=13] {
	polygon-pattern-file: url('icons/stripe_sm.png');
	line-width: 0.5; 
	line-color: #000;
}
#building[zoom=14] {
	polygon-pattern-file: url('icons/stripe_med.png');
	line-width: 0.5; 
	line-color: #000;
}
#building[zoom=15],
#building[zoom=16],
#building[zoom=17],
#building[zoom>=18] {
	polygon-pattern-file: url('icons/stripe.png');
	line-width: 0.5; 
	line-color: #000;
}
#building[osm_id=45074542][zoom>=18] {
	polygon-pattern-file: url('icons/stripe_color.png');
	line-width: 1.5; 
	line-color: #00aeef;
}

/* parks */
#landuse {
  [class='park'] { polygon-pattern-file: url('icons/halftone2.png'); }
}