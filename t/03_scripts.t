use strict;
use Test::More;

if( $^O =~ m/^(?:MSWin32|VMS)$/) {
    plan skip_all => 'Test not compatible with your OS';
}
else {
    plan tests => 1;
}


my $out = `$^X -cw script/check_tmobile_allowances 2>&1`;

if($?) {
	diag($out);
	ok(0, 'Script does not compile');
}
else {
	ok(1);
}
