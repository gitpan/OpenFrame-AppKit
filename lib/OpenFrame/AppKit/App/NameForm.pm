package OpenFrame::AppKit::App::NameForm;

use strict;

use OpenFrame::AppKit::App;
use base qw ( OpenFrame::AppKit::App );

sub entry_points {
  return {
	  form_filled => [ qw(name) ]
	 }
}

sub default {
  my $self = shift;
  $self->{name} = undef;
}

sub form_filled {
  my $self = shift;
  my $args = $self->request->arguments();
  $self->{name} = $args->{name};
}

1;

