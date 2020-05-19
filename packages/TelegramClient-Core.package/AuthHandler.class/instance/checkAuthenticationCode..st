accessing
checkAuthenticationCode: aString

	self client send: '{"@type": "checkAuthenticationCode", "code": "', aString, '"}'.