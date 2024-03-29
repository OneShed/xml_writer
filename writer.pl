
use XML::Writer;
use IO::File;

my $output = IO::File->new(">output.xml");

my $writer = XML::Writer->new(OUTPUT => $output);
$writer->startTag("greeting",
		"class" => "simple");
$writer->characters("Hello, world!");
$writer->endTag("greeting");
$writer->end();
$output->close();
