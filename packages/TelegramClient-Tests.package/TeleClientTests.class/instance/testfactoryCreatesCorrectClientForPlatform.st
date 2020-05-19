as yet unclassified
testfactoryCreatesCorrectClientForPlatform
| client osList factory classList |
osList := #('Win32', 'Mac OS', 'undefined').
classList := #(WindowsClient class, MacClient class, LinuxClient class).
factory := TeleClientFactory new.
1 to: osList size do: [:i |
		client := factory CreateClient: (osList at: i).
		self assert: client class equals: (classList at: i).
	 ].