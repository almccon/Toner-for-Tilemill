
#road,
#tunnel,
#bridge[zoom>=6] {
  ['mapnik::geometry_type'=2] {
    line-color: @highway;
    line-width: 0.1;
    [class='motorway'] {
      [zoom>=7] { line-width: 1.5; }
    }
    [class='main'] {
      [zoom>=10] { line-width: 0.5; }
      [zoom>=12] { line-width: 0.5; }
      [zoom>=14] { line-width: 3; }
      [zoom>=16] { line-width: 5; }
    }
    [class='street'],
    [class='street_limited'] {
      [zoom>=14] { line-width: 1; }
      [zoom>=16] { line-width: 2; }
    }
    [class='street_limited'] { line-dasharray: 4,1; }
  }
}



/* aeroways */
#aeroways[zoom>11] {
	line-color: @aeroway;
	line-cap: square;
	line-join: miter;
}

#aeroways[zoom>=15] {
	line-color: @aeroway;
}

#aeroways[aeroway='runway'][zoom=12] { line-width: 2; }
#aeroways[aeroway='runway'][zoom=13] { line-width: 4; }
#aeroways[aeroway='runway'][zoom=14] { line-width: 8; }
#aeroways[aeroway='runway'][zoom=15] { line-width: 16; }
#aeroways[aeroway='runway'][zoom=16] { line-width: 32; }
#aeroways[aeroway='runway'][zoom=17] { line-width: 64; }
#aeroways[aeroway='runway'][zoom>=18] { line-width: 128; }

#aeroways[aeroway='taxiway'][zoom=13] { line-width: 1; }
#aeroways[aeroway='taxiway'][zoom=14] { line-width: 2; }
#aeroways[aeroway='taxiway'][zoom=15] { line-width: 4; }
#aeroways[aeroway='taxiway'][zoom=16] { line-width: 8; }
#aeroways[aeroway='taxiway'][zoom=17] { line-width: 16; }
#aeroways[aeroway='taxiway'][zoom>=18] { line-width: 32; }