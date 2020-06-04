factory
testFactoryCreatesCorrectClientForPlatform

	| client osList factory classList |
	osList := #('Win32' 'Mac OS' 'Linux').
	classList := #(WindowsClient MacClient LinuxClient).
	factory := TCCTeleClientFactory new.
	osList do: [:os |
		client := factory createClient: os.
		self assert: client type equals: os].