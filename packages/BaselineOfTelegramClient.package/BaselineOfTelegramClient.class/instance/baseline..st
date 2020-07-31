baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			Preferences disable: #showDeprecationWarnings.
			spec
				baseline: 'SwaLint' with: [
					spec
						repository: 'github://hpi-swa-teaching/SwaLint:release/packages'];
				package: 'JSON' with: [
					spec
						file: 'JSON-ul.35';
						repository: 'http://www.squeaksource.com/JSON' ];
				package: 'FFI-Pools' with: [
					spec
						file: 'FFI-Pools-eem.13';
						repository: 'http://source.squeakfoundation.org/FFI' ];
				package: 'FFI-Kernel' with: [
					spec
						file: 'FFI-Kernel-nice.68';
						repository: 'http://source.squeakfoundation.org/FFI' ];

				package: 'TelegramClient-Core' with: [spec requires: #('libraries')];
				package: 'TelegramClient-UI' with: [spec requires: #('libraries')];
				package: 'TelegramClient-Tests' with: [spec requires: #('default' 'SwaLint')].

			spec
				group: 'libraries' with: #( 'JSON' 'FFI-Kernel' 'FFI-Pools');
				group: 'default' with: #('TelegramClient-Core' 'TelegramClient-UI');
				group: 'tests' with: #('TelegramClient-Tests' )].
