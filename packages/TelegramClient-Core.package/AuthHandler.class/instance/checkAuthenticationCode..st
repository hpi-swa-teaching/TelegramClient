as yet unclassified
checkAuthenticationCode: aString

	self client send: '{"@type": "checkAuthenticationCode", "code": "', aString, '"}'.