baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'FFI-Pools';
				package: 'FFI-Kernel';
				package: 'TelegramClient-Core' with: [spec requires: #('FFI-Kernel', 'FFI-Pools')];
				package: 'TelegramClient-Tests' with: [spec requires: #('TelegramClient-Core')];
				yourself.
			spec
				group: 'default' with: #('TelegramClient-Core');
				group: 'tests' with: #('TelegramClient-Tests')];
				yourself