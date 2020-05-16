initialize-release
checkAuthenticationCode: aString

	self send: '{"@type": "checkAuthenticationCode", "code": "', aString, '"}'.