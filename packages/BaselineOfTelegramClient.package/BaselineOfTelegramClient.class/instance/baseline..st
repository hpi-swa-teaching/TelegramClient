baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [		
			spec 
			project: 'RefactoringBrowser' with: [
				spec
					className: 'ConfigurationOfRefactoringBrowser';
					versionString: #'stable';
					loads: #('Core' );
					repository: 'http://www.squeaksource.com/MetacelloRepository' ];
			project: 'Grease' with: [
				spec
					className: 'ConfigurationOfGrease';
					versionString: #'stable';
					loads: #('Slime');
					repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
					repository: 'http://www.squeaksource.com/MetacelloRepository'];
			project: 'Seaside3' with: [
				spec
					className: 'ConfigurationOfSeaside3';
					versionString: #'stable';
					loads: #('Development');
					repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
					repository: 'http://www.squeaksource.com/MetacelloRepository'].
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
			package: 'SwaLint-Preferences';
			package: 'SwaLint-Core' with: [spec requires: #('RefactoringBrowser' 'SwaLint-Preferences')];
				postLoadDoIt: #postLoad;
			package: 'SwaLint-PlugIns' with: [ spec requires: 'SwaLint-Core' ];
			package: 'SwaLint-Slime-Grease' with: [spec requires: #('SwaLint-PlugIns' 'Grease')];
			package: 'SwaLint-Slime-Seaside' with: [spec requires: #('SwaLint-PlugIns' 'Seaside3')];
			
				package: 'TelegramClient-Core' with: [spec requires: #('FFI-Pools' 'FFI-Kernel')];
				package: 'TelegramClient-Tests'  with: [spec requires: #('default' 'All' )];
				yourself.
			spec
				group: 'libraries' with: #( 'JSON' 'FFI-Kernel' 'FFI-Pools');
				group: 'default' with: #('TelegramClient-Core');
				group: 'tests' with: #('TelegramClient-Tests' )];
			group: 'default' with: #('PlugIns');
			group: 'portability' with: #('PlugIns' 'SwaLint-Slime-Grease');
			group: 'web' with: #('portability' 'SwaLint-Slime-Seaside');
			group: 'Core' with: #('SwaLint-Core');
			group: 'All' with: #( 'web');
			group: 'PlugIns' with: #('SwaLint-PlugIns');
				yourself