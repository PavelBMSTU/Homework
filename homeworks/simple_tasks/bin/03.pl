use strict;
use warnings;
    my $x = <STDIN>;
    my $y = <STDIN>;
    my $z = <STDIN>;

    my @array = ($x,$y,$z);
    my ($min, $max);

for (@array) {
    $min = $_ if !$min || $_ <= $min;
    $max = $_ if !$max || $_ >= $max
        };


    print "$min, $max\n";
