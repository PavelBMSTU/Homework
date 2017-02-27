use strict;
use warnings;

    my $a = <STDIN>;
    my $b = <STDIN>;
    my $c = <STDIN>;
    
    my $x1 = undef;
    my $x2 = undef;
    
    if (($b**2 - 4*$a*$c) >= 0) {
        $x1 = ((-1)*$b + ($b**2 - 4*$a*$c)**(1/2))/(2*$a);
        $x2 = ((-1)*$b - ($b**2 - 4*$a*$c)**(1/2))/(2*$a);
                print "$x1, $x2\n";
    }
    else {
        print "No solution!\n";
    }
}

