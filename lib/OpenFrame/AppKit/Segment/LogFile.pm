package OpenFrame::AppKit::Segment::LogFile;

use strict;
use warnings::register;

use Pipeline::Segment;
use base qw ( Pipeline::Segment );

sub dispatch {
  my $self  = shift;
  my $pipe  = shift;
  my $store = $pipe->store();

  my $request = $store->get('OpenFrame::Request');
  $self->emit($request->uri->path)
}

1;
