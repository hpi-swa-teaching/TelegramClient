testing
testClientConstants

	{TCCLinuxClient . TCCWindowsClient . TCCMacClient} do: [:aClientClass |
		self assert: aClientClass downloadUrl isString.
		self assert: aClientClass fileName isString].