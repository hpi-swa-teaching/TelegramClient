instance creation
newCheckAuthenticationPassword: aString

	^ TCCRequest
		newWithType: 'checkAuthenticationPassword'
		from: {'password' -> aString}