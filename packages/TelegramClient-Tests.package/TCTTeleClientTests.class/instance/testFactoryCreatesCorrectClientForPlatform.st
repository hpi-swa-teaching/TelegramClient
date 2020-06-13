factory
testFactoryCreatesCorrectClientForPlatform

	| client |

	#('Win32' 'Mac OS' 'Linux') do: [:os |
		client := TCCTeleClientFactory new createClient: os.
		self assert: client type equals: os].