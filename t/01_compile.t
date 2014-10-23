#!/usr/bin/perl

BEGIN {
	$|  = 1;
	$^W = 1;
}

use Test::More tests => 4;

ok( $] >= 5.006, 'Perl version is new enough' );

require_ok( 'ORLite::Mirror' );
require_ok( 't::lib::Test'   );
is( $ORLite::Mirror::VERSION, $t::lib::Test::VERSION, '$VERSION matches' );
