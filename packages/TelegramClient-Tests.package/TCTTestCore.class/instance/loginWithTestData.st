logIn
loginWithTestData
	
	"See https://core.telegram.org/api/auth#test-phone-numbers"
	| phoneNumber testX testYYYY |
	testX := $1.
	testYYYY := '1079'.
	phoneNumber := '99966' , testX , testYYYY.
	
	self authHandler sendPhoneNumber: phoneNumber.
	2 seconds wait.
	self checkAuthenticationCode: (String new: 5 withAll: testX).