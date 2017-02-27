use strict;
use warnings;

    my $x = <STDIN>;
    chomp $x;
    my $i = 0;
    my $bin = "";
    my $num;

     while ($x > 0){
         if ($x % 2) {
             $bin = 1 . $bin;
         } else { $bin = 0 . $bin;
            };
    $x >>= 1;
     }

    print "$bin\n";


$num = $bin % 10;
if ($num == 1) {
    print "1\n";
}
else {
while ($num != 1) {
    $num = $bin % 10;
    $i++;
    $bin = $bin / 10;
}
    print "$i\n";
}
