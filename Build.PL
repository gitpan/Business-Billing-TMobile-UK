use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
	module_name         => 'Business::Billing::TMobile::UK',
	license             => 'perl',
	dist_author         => 'Sagar R. Shah <sagarshah@softhome.net>',
	dist_version_from   => 'lib/Business/Billing/TMobile/UK.pm',
	requires            => {
		'HTML::TreeBuilder' => 0,
		'Term::ReadPassword'=> 0,
		'WWW::Mechanize'    => 0,
	},
	build_requires      => {
		'Test::More' => 0,
	},
	create_readme      => 1,
	scripts            => [ 'script/check_tmobile_allowances' ],
	sign               => 1,
	create_makefile_pl => 'passthrough',
	add_to_cleanup      => [ 'Business-Billing-TMobile-UK-*' ],
);

$builder->create_build_script();
