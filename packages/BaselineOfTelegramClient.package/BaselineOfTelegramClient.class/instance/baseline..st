baseline
baseline: spec 
	<baseline>
	
	spec for: #common do: [Preferences disable: #showDeprecationWarnings.
		spec
			baseline: 'SwaLint' with: [
				spec repository: 'github://hpi-swa-teaching/SwaLint:release/packages'];
			package: 'JSON' with: [
				spec file: 'JSON-ul.35';
				repository: 'http://www.squeaksource.com/JSON'];
			package: 'FFI-Kernel' with: [
				spec
					configuration: 'FFI';
					version: '2.0'].
		
		spec
			package: 'TelegramClient-Core' with: [
				spec requires: #('libraries')];
			package: 'TelegramClient-UI' with: [
				spec requires: #('libraries')];
			package: 'TelegramClient-Tests' with: [
				spec requires: #('default' 'SwaLint')].
		spec
			group: 'libraries' with: #('JSON' 'FFI-Kernel');
			group: 'default' with: #('TelegramClient-Core' 'TelegramClient-UI');
			group: 'tests' with: #('TelegramClient-Tests')].