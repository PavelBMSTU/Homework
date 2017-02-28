#!/usr/bin/perl

use strict;
use warnings;

=encoding UTF8
=head1 SYNOPSYS

Поиск номера первого не нулевого бита.

=head1 run ($x)

Функция поиска первого не нулевого бита в 32-битном числе (кроме 0).
Пачатает номер первого не нулевого бита в виде "$num\n"

Примеры: 

run(1) - печатает "0\n".

run(4) - печатает "2\n"

run(6) - печатает "1\n"

=cut

sub run {
    my ($x) = @_;
    my $num = 0;
    chomp $x;
    my $kol = 0;
    my $bin = "";
    
    while ($x > 0){
        if ($x % 2) {
            $bin = 1 . $bin;
        } else { $bin = 0 . $bin;
        };
        $x >>= 1;
    }
    
    $kol = $bin % 10;
    if ($kol == 1) {
        print "1\n";
    }
    else {
        while ($kol != 1) {
            $kol = $bin % 10;
            $num++;
            $bin = $bin / 10;
        }
        print "$num\n";
    }


    
}

1;
