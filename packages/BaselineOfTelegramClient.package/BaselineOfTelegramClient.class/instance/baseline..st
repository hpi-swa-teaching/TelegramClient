baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [				
                 spec configuration: 'FFI-Kernel' with: [ spec repository:    'http://www.squeaksource.com/MetacelloRepository'].
                 spec configuration: 'FFI-Pools' with: [ spec repository:    'http://www.squeaksource.com/MetacelloRepository'].
				
			spec package: 'TelegramClient-Core';
				package: 'TelegramClient-Tests' with: [spec requires: #('TelegramClient-Core')];
				yourself.
			spec
				group: 'FFI' with: #('FFI-Kernel', 'FFI-Pools');
				group: 'default' with: #('TelegramClient-Core', 'FFI');
				group: 'tests' with: #('TelegramClient-Tests', 'FFI')];
				yourself