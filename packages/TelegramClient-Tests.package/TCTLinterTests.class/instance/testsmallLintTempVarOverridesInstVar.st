tests
testsmallLintTempVarOverridesInstVar

	"temp vars override the instance vars in scope which leads to easy bugs. choose different names!"
	self arbitraryCodeRule: #smallLintTempVarOverridesInstVar.