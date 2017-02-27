use strict;
use warnings;

    my $x = <STDIN>;
    my $y = <STDIN>;
    my $z = 0;
    for (my $i = $x; $i <= $y; $i++) {
        for ( my $k = 1; $k < $i; $k++) {
            if (($k > 1) && (($i % $k) == 0)) {
                $z++;
            }
        }
        if ($z == 0) {
           	print "$i\n";
        }
        else {
            $z = 0;
        }
    }


