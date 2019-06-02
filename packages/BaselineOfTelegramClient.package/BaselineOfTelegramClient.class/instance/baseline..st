baseline
baseline: t1 
	<baseline>
	t1
		for: #common
		do: [t1 package: 'TelegramClient-Core';
				
				package: 'TelegramClient-Tests'
				with: [t1 requires: #('TelegramClient-Core')];
				 yourself.
			t1 group: 'default' with: #('TelegramClient-Core');
				 group: 'tests' with: #('TelegramClient-Tests')];
		 yourself