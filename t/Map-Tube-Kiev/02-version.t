use strict;
use warnings;

use Map::Tube::Kiev;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Map::Tube::Kiev::VERSION, 0.08, 'Version.');
