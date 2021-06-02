baseline
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec
			baseline: 'Animations' with: [
				spec repository: 'github://hpi-swa/animations:master/repository'];
			project: 'FFI' with: [
				spec
					className: 'ConfigurationOfFFI';
					repository: 'http://www.squeaksource.com/MetacelloRepository';
					versionString: (SystemVersion current isAlpha
						ifTrue: [#development]
						ifFalse: [#stable]);
					loads: #('Core')];
			package: 'JSON' with: [
				spec file: 'JSON-ul.35';
				repository: 'https://www.squeaksource.com/JSON'];
			baseline: 'MorphicTestingFramework' with: [
				spec repository: 'github://hpi-swa-teaching/Morphic-Testing-Framework:master/packages'];
			baseline: 'SwaLint' with: [
				spec repository: 'github://hpi-swa-teaching/SwaLint:develop/packages'].
		
		spec
			package: 'TelegramClient-Core' with: [
				spec requires: #('libraries')];
			package: 'TelegramClient-UI' with: [
				spec requires: #('libraries')];
			package: 'TelegramClientTests-UI' with: [
				spec requires: #('default' 'MorphicTestingFramework')];
			package: 'TelegramClientTests-Core' with: [
				spec requires: #('default' 'SwaLint')].
		spec
			group: 'libraries' with: #('Animations' 'FFI' 'JSON');
			group: 'default' with: #('TelegramClient-Core' 'TelegramClient-UI');
			group: 'tests' with: #('TelegramClientTests-UI' 'TelegramClientTests-Core')].
