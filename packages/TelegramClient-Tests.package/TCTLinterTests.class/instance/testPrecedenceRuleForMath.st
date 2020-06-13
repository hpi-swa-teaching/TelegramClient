tests
testPrecedenceRuleForMath
	
	"2+4*4 = 18, not 24 as in squeak."
	self arbitraryCodeRule: #precedenceRule:. 