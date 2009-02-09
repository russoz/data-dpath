package Data::DPath::Filters;

use 5.010;
use strict;
use warnings;

use Data::Dumper;

our $idx;

sub affe {
        return $_ eq 'affe' ? 1 : 0;
}

sub idx { $idx }

sub size
{
        #say "size: ".Dumper($_);
        return scalar @$_      if ref $_ eq 'ARRAY';
        return scalar keys %$_ if ref $_ eq 'HASH';
        return  1         if ref \$_ eq 'SCALAR';
        return -1;
}

1;

__END__

=head1 NAME

Data::DPath::Filters - Magic DWIM functions available inside filter conditions

=head1 API METHODS

=head2 affe

Mysterious test function. Will vanish. Soon.

=head2 index

Returns the current index inside array elements.

=head1 AUTHOR

Steffen Schwigon, C<< <schwigon at cpan.org> >>

=head1 COPYRIGHT & LICENSE

Copyright 2008,2009 Steffen Schwigon.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut