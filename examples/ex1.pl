#!/usr/bin/env perl

# Pragmas.
use strict;
use warnings;

# Modules.
use Encode qw(decode_utf8 encode_utf8);
use Map::Tube::Kiev;

# Object.
my $obj = Map::Tube::Kiev->new;

# Get route.
my $route = $obj->get_shortest_route(decode_utf8('TODO'), decode_utf8('TODO'));

# Print out type.
print "Route: ".encode_utf8($route)."\n";

# Output:
# Route: TODO