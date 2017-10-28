#Everything being a string, here is a cool way to set a big big number :) 
proc infinity{
	set limit infinity
	set list {1 2 3 4 5}
	foreach x $list {
		if {$x < limit} {
			set limit $x		
		}	
	}
}
