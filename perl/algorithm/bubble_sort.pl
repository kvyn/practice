# $ perl ./algorithm/perl/bubble_sort.pl
use strict;
use warnings;
use Data::Dumper;

my @array = (3, 6, 7, 8, 0, 4, 1, 9, 2, 5);
my $cnt = scalar(@array);

main();

sub main {
    my @sorted_array = bubble_sort(@array);
	print Dumper(\@sorted_array);
}

sub bubble_sort {
    my @numbers = @_;
    my $tmp;
    for (my $i = 0; $i < $cnt; $i++){
		for (my $j = $cnt - 1; $j > $i; $j--) {
			if ($numbers[$j] < $numbers[$j - 1]) {
                $tmp = $numbers[$j];
				$numbers[$j] = $numbers[$j - 1];
                $numbers[$j - 1] = $tmp;
			}
		}
	}
	return @numbers;
}