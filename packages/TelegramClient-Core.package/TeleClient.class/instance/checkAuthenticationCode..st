initialize-release
checkAuthenticationCode: aString

	self Send: '{"@type": "checkAuthenticationCode", "code": "', aString, '"}'.