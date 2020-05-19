factory
testfactoryCreatesCorrectClientForPlatform
| client osList factory classList |
osList := #('Win32' 'Mac OS' 'Linux').
classList := #(WindowsClient MacClient LinuxClient).
factory := TeleClientFactory new.
1 to: osList size do: [:i |
		client := factory createClient: (osList at: i).
		self assert: client class name equals: (classList at: i).
	 ].