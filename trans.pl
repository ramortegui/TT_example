use strict;
use warnings;
use Template;

my $file = 'src/greeting.html';
my $vars = {
   message  => "Hello World",
   array => [
    { number => "four", value => 4 },
    { number => "three", value => 2 },
    { number => "two", value => 2 },
   ]
  
};

my $template = Template->new();

$template->process($file, $vars)
    || die "Template process failed: ", $template->error(), "\n";

