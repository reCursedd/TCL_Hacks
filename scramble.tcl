namespace eval Scramble {

    # Scramble the $inlist into a random order.
    proc scramble {inlist} {
      set y {}
      foreach x $inlist {
        lappend y [list [expr {rand()}] $x]
      }
      set y [lsort $y]
      set outlist {}
      foreach x $y {
        lappend outlist [lindex $x 1]
      }
      return $outlist
    }


    # Export the procedures to be used from other scripts.
    namespace export *
}