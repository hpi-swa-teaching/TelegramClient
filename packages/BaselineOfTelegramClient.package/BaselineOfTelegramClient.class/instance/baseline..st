baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [		
			Preferences disable: #showDeprecationWarnings.		
			spec 
			project: 'RefactoringBrowser' with: [
				spec
					className: 'ConfigurationOfRefactoringBrowser';
					versionString: #'stable';
					loads: #('Core' );
					repository: 'http://www.squeaksource.com/MetacelloRepository' ].
			spec   
				package: 'JSON'
						with: [
							spec
								file: 'JSON-ul.35';
								repository: 
										'http://www.squeaksource.com/JSON' ];
				package: 'FFI-Pools' with: [
							spec
								file: 'FFI-Pools-eem.13';
								repository: 
										'http://source.squeakfoundation.org/FFI' ];
				package: 'FFI-Kernel' with: [
							spec
								file: 'FFI-Kernel-nice.68';
								repository: 
										'http://source.squeakfoundation.org/FFI' ];
			
			"swalint setup"
			package: 'SwaLint-Preferences' with: [
							spec
								file: 'SwaLint-Preferences-cypress.1';
								repository: 
										'github://hpi-swa-teaching/SwaLint:master/packages' ];
			package: 'SwaLint-Core' with: [spec
								file: 'SwaLint-Core-cypress.1';
								repository: 
										'github://hpi-swa-teaching/SwaLint:master/packages';
								requires: #('RefactoringBrowser' 'SwaLint-Preferences')];
				postLoadDoIt: #postLoad;
			package: 'SwaLint-PlugIns' with: [ spec file: 'SwaLint-PlugIns-cypress.1';
								repository: 
										'github://hpi-swa-teaching/SwaLint:master/packages'; requires: 'SwaLint-Core' ];
			
			
				package: 'TelegramClient-Core' with: [spec requires: #('libraries')];
				package: 'TelegramClient-UI' with: [spec requires: #('libraries')];
				package: 'TelegramClient-Tests'  with: [spec requires: #('default' 'All')];
				yourself.
			spec
				group: 'libraries' with: #( 'JSON' 'FFI-Kernel' 'FFI-Pools');
				group: 'default' with: #('TelegramClient-Core' 'TelegramClient-UI');
				group: 'tests' with: #('TelegramClient-Tests' )];
			group: 'default' with: #('PlugIns' 'libraries');
			group: 'portability' with: #('PlugIns');
			group: 'web' with: #('portability' );
			group: 'Core' with: #('SwaLint-Core');
			group: 'All' with: #( 'web');
			group: 'PlugIns' with: #('SwaLint-PlugIns');
				yourself
