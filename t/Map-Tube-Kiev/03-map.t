use strict;
use warnings;

use Map::Tube::Kiev;
use Test::Map::Tube 'tests' => 2;
use Test::NoWarnings;

# Test.
ok_map(Map::Tube::Kiev->new, 'Test validity of map.');
