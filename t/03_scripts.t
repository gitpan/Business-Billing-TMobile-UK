use strict;
use Test::More tests=>1;

my $out = `perl -cw script/check_tmobile_allowances 2>&1`;

if($?) {
	diag($out);
	ok(0, 'Script does not compile');
}
else {
	ok(1);
}
