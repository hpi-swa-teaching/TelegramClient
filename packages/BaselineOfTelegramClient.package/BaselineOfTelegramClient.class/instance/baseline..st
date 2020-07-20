baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
				Preferences disable: #showDeprecationWarnings.	
				spec baseline: 'SwaLint' with: [
	                        spec
	                                repository: 'github://hpi-swa-teaching/SwaLint:release/packages'];
			
				"Telegram setup"
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
