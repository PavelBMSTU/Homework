#!/usr/bin/perl

use strict;
use warnings;

=encoding UTF8
=head1 SYNOPSYS

Шифр Цезаря https://ru.wikipedia.org/wiki/%D0%A8%D0%B8%D1%84%D1%80_%D0%A6%D0%B5%D0%B7%D0%B0%D1%80%D1%8F

=head1 encode ($str, $key)

Функция шифрования ASCII строки $str ключем $key.
Пачатает зашифрованную строку $encoded_str в формате "$encoded_str\n"

Пример:

encode('#abc', 1) - печатает '$bcd'

=cut

sub encode {
    my ($str, $key) = @_;
    my $encoded_str = '';
    my $str1 = '';
    
    chomp $str;
    chomp $key;
    
    for (my $i = 0; $i < length $str; $i++) {
        $str1 = ord (substr $str,$i,1) + $key;
        $str1 = $str1 - 127 if ($str1 > 127);
        $encoded_str = chr ($str1);
        print "$encoded_str";
    }
    
    print "\n";
}

=head1 decode ($encoded_str, $key)

Функция дешифрования ASCII строки $encoded_str ключем $key.
Пачатает дешифрованную строку $str в формате "$str\n"

Пример:

decode('$bcd', 1) - печатает '#abc'

=cut

sub decode {
    my ($encoded_str, $key) = @_;
    my $str = '';
    my str1 = '';
    chomp $encoded_str;
    
    for (my $i = 0; $i < length $encoded_str; $i++) {
        $str1 = ord (substr $encoded_str,$i,1) - $key;
        $str1 = 127 - $str1 if ($str1 < 0);
        $str = chr ($str1);
        print "$str";
    }
    
    print "\n";
}

1;
