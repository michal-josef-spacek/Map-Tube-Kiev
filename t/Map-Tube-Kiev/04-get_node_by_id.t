# Pragmas.
use strict;
use warnings;

# Modules.
use Encode qw(decode_utf8);
use English;
use Map::Tube::Kiev;
use Test::More tests => 4;
use Test::NoWarnings;

# Test.
my $map = Map::Tube::Kiev->new;
my $ret = $map->get_node_by_id('foo');
is($ret, undef, 'Get node for bad node id.');

# Test.
eval {
	$map->get_node_by_id;
};
like($EVAL_ERROR, qr{^Map::Tube::get_node_by_id\(\): ERROR: Missing station id. \(status: 102\)},
	'Missing station id.');

# Test.
$ret = $map->get_node_by_id('1-10');
is($ret->name, decode_utf8('Театральна'), 'Get node for node id.');
