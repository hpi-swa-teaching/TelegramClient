event handling
buttonVerifyAuthCodePressed

	self core checkAuthenticationCode: self inputField text.
	self buttonVerifyAuthCodePressed makeLighter.