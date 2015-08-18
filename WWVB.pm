package WWVB;

use strict;
use Getopt::Long;

sub args {
  my($ARGV,%additional) = @_;

  my(%args) = (
    SAMPLES_PER_SECOND => 100,
    STARTUP_DELAY => 10,
  );

  Getopt::Long::GetOptionsFromArray ($ARGV,
		  "sps=i" => \$args{SAMPLES_PER_SECOND},
		  "delay=i" => \$args{STARTUP_DELAY},
                  %additional
	     ) or die("Error in command line arguments\n");

  return(%args);
}

1;
