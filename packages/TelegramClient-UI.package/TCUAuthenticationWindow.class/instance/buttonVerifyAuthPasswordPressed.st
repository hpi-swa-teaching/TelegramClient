event handling
buttonVerifyAuthPasswordPressed

	self core checkAuthenticationPassword: self passwordField text.
	self buttonVerifyAuthPasswordPressed makeLighter.