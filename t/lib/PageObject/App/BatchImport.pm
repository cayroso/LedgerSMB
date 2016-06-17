package PageObject::App::BatchImport;

use strict;
use warnings;

use Carp;
use PageObject;

use Moose;
extends 'PageObject';

my $page_heading = 'Add Credit Invoice';

sub _verify {
    my ($self) = @_;

    $self->driver->find_element_by_label($_)
        for ("Reference", "Description", "Transaction Date", "From File");

    return $self;
}

__PACKAGE__->meta->make_immutable;

1;
