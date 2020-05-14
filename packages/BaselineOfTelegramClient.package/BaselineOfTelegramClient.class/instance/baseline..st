baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [				
			spec                 
				spec configuration: 'FFI' with: [ spec repository:      'http://www.squeaksource.com/MetacelloRepository'];
				package: 'TelegramClient-Core';
				package: 'TelegramClient-Tests' with: [spec requires: #('TelegramClient-Core')];
				yourself.
			spec
				group: 'default' with: #('TelegramClient-Core', 'FFI');
				group: 'tests' with: #('TelegramClient-Tests', 'FFI')];
				yourself