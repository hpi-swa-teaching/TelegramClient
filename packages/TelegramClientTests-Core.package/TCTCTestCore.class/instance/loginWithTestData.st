logIn
loginWithTestData

	"See https://core.telegram.org/api/auth#test-phone-numbers. Choose random numbers to bypass flood limits."
	| phoneNumber testX testYYYY |

	testX := $3. "($1 to: $3) atRandom"
	testYYYY := '1234'. "((1 to: 4) collect: [:i | ($0 to: $9) atRandom]) join"
	phoneNumber := '99966' , testX , testYYYY.

	self authHandler sendPhoneNumber: phoneNumber.
	[self authHandler isAwaitingAuthCode] whileFalse: [1 second wait.].
	self checkAuthenticationCode: (String new: 6 withAll: testX).