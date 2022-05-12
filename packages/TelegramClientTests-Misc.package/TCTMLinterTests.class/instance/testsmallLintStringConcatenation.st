tests
testsmallLintStringConcatenation

	"strings should be streamed when possible instead of concatted, as the runtime is better"
	self arbitraryCodeRule: #smallLintStringConcatenation.