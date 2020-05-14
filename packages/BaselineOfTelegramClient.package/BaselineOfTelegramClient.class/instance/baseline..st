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
				package: 'FFI-Pools';
				package: 'FFI-Kernel';
				package: 'TelegramClient-Core';
				package: 'TelegramClient-Tests'  with: [spec requires: #('default')];
				yourself.
			spec
				group: 'libraries' with: #( 'JSON' 'FFI' );
				group: 'default' with: #('TelegramClient-Core', 'FFI-Kernel');
				group: 'tests' with: #('TelegramClient-Tests', 'FFI-Kernel')];
				yourself