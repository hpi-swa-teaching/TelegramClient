baseline
baseline: spec
	<baseline>
	
	spec for: #common do: [Preferences disable: #showDeprecationWarnings.
		spec
			baseline: 'Animations' with: [
				spec repository: 'github://hpi-swa/animations:master/repository'];
			project: 'FFI' with: [
				spec
					className: 'ConfigurationOfFFI';
					repository: 'http://www.squeaksource.com/MetacelloRepository';
					versionString: #development;
					loads: #('Core')];
			package: 'JSON' with: [
				spec file: 'JSON-ul.35';
				repository: 'https://www.squeaksource.com/JSON'];
			baseline: 'SwaLint' with: [
				spec repository: 'github://hpi-swa-teaching/SwaLint:release/packages'].
		
		spec
			package: 'TelegramClient-Core' with: [
				spec requires: #('libraries')];
			package: 'TelegramClient-UI' with: [
				spec requires: #('libraries')];
			package: 'TelegramClient-Tests' with: [
				spec requires: #('default' 'SwaLint')].
		spec
			group: 'libraries' with: #('Animations' 'FFI' 'JSON');
			group: 'default' with: #('TelegramClient-Core' 'TelegramClient-UI');
			group: 'tests' with: #('TelegramClient-Tests')].