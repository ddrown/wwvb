#!/usr/bin/perl

use strict;
use Math::Trig qw(pip2 rad2deg);
$| = 1;

sub arg {
  my($real,$imag) = @_;

  if($real == 0) {
    if($imag > 0) {
      return pip2;
    } elsif($imag < 0) {
      return -1 * pip2;
    } else {
      return -1000;
    }
  } else {
    return atan2($imag, $real);
  }
}

my($real,$imag);
while(defined($real = <>) and defined($imag = <>)) {
  chomp($real);
  chomp($imag);
  my $mag = sqrt($real*$real + $imag*$imag);
  my $arg = arg($real,$imag);
  print rad2deg($arg),"\n";
}
