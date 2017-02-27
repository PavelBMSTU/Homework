use strict;
use warnings;
    my $str = <STDIN>;
    chomp $str;
    my $substr = <STDIN>;
    chomp $substr;
    my $num = 0;

for(my $i = 0; $i < (length $str); $i = $i+(length $substr)) {
    $num++ if ((substr $str, $i, length $substr) eq $substr);
}
print "$num\n";






