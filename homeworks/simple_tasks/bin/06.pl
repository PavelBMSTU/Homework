use strict;
use warnings;

    my $str = <STDIN>;
    my $key = <STDIN>;
    my $encoded_str;

    chomp $str;
    chomp $key;

    for (my $i = 0; $i < length $str; $i++) {
       $encoded_str = chr (ord (substr $str,$i,1) + $key);
        print "$encoded_str";
    }

print "\n";


    my $encoded_str = <STDIN>;
    my $key = <STDIN>;
    my $str;

    chomp $encoded_str;

for (my $i = 0; $i < length $encoded_str; $i++) {
    $str = chr (ord (substr $encoded_str,$i,1) - $key);
    print "$str";
}

print "\n";


