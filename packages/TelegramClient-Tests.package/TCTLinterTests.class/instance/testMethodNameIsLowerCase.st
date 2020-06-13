tests
testMethodNameIsLowerCase
	
	self methodTestObjects do: [:aSLMethodTestObject |

		self assert: aSLMethodTestObject sourceCode string first isLowercase]