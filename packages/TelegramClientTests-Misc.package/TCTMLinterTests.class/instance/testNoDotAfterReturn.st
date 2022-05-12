tests
testNoDotAfterReturn

	| code |

	self methodTestObjects do: [:aSLMethodTestObject |
		code := aSLMethodTestObject sourceCode string.
		
		"may return nil, so deny: is not an option"
		self assert: (SLCodingStylesPlugIn new hasDotAfterReturn: code) ~= true].