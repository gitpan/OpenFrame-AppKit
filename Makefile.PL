use ExtUtils::MakeMaker;

WriteMakefile(
	      NAME => 'OpenFrame::AppKit',
	      VERSION_FROM => 'lib/OpenFrame/AppKit.pm',
	      PREREQ_PM => {
			    'OpenFrame'    => '3.00',
			    'Cache::Cache' => '0.01',
			    'Template'     => '0.01',
		    }
	     );
