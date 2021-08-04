set nf [molinfo top get numframes]
set outfile [open water-site.dat w]
#set selection
set sel [atomselect top "water and name OW and within 3 of protein and resid 1 2 3 4 5"]
for {set i 0} {$i<$nf} {incr i} {
$sel frame $i
$sel update
set molnum [$sel num]
puts $outfile "$i $molnum"
}
close $outfile
