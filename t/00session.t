use Test::Simple tests => 4;

use OpenFrame::AppKit::Session;

ok(my $session = OpenFrame::AppKit::Session->new(), "session created ok");
ok(my $id = $session->id(), "got id okay");
ok($session->store(), "stored session okay");
ok(my $s2 = OpenFrame::AppKit::Session->fetch( $id ), "got session ok");


1;
