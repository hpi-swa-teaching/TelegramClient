tests
testIfTrueReturnsRule

	"replace IfTrue ifFalse branches with the shorter bool equivalent if possible"
	self arbitraryCodeRule: #ifTrueReturnsRule: plugIn: SLRBImportPlugIn.