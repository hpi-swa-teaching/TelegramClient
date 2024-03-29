logIn
loginWithTestData

	"See https://core.telegram.org/api/auth#test-phone-numbers. Choose random numbers to bypass flood limits."
	| phoneNumber testX testYYYY |

	testX := $2. "($1 to: $3) atRandom"
	testYYYY := '2345'. "((1 to: 4) collect: [:i | ($0 to: $9) atRandom]) join"
	phoneNumber := '99966' , testX , testYYYY.

	self authenticationHandler sendPhoneNumber: phoneNumber.
	[self authenticationHandler isAwaitingAuthCode] whileFalse: [1 second wait.].
	self checkAuthenticationCode: (String new: 5 withAll: testX).
