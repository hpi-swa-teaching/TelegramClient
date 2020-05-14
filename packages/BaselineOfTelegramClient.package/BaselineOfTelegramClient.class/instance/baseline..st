baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [				
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
				package: 'SwaLint-Core' with: [
							spec
								file: 'SwaLint-Core-cypress.1';
								repository: 
										'github://hpi-swa-teaching/SwaLint:master/packages' ];
				package: 'SwaLint-PlugIns' with: [
							spec
								file: 'SwaLint-PlugIns-cypress.1';
								repository: 
										'github://hpi-swa-teaching/SwaLint:master/packages' ];
				package: 'SwaLint-Preferences' with: [
							spec
								file: 'SwaLint-Preferences-cypress.1';
								repository: 
										'github://hpi-swa-teaching/SwaLint:master/packages' ];
				package: 'TelegramClient-Core' with: [spec requires: #('FFI-Pools' 'FFI-Kernel')];
				package: 'TelegramClient-Tests'  with: [spec requires: #('default' 'SwaLint-Core' 'SwaLint-PlugIns' 'SwaLint-Preferences')];
				yourself.
			spec
				group: 'libraries' with: #( 'JSON' 'FFI-Kernel' 'FFI-Pools');
				group: 'linting' with: #('SwaLint-Preferences' 'SwaLint-Core'  'SwaLint-PlugIns');
				group: 'default' with: #('TelegramClient-Core');
				group: 'tests' with: #('TelegramClient-Tests' 'linting')];
				yourself