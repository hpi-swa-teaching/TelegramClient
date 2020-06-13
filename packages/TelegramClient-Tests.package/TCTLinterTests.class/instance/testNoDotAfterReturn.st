tests
testNoDotAfterReturn

	| code |

	self methodTestObjects do: [:aSLMethodTestObject |
		code := aSLMethodTestObject sourceCode string.

		self assert: (SLCodingStylesPlugIn new hasDotAfterReturn: code) ~= true].