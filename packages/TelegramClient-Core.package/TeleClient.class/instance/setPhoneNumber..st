initialize-release
setPhoneNumber: aNumber

	self send: ('{"@type": "setAuthenticationPhoneNumber", "phone_number": "', aNumber, '"}').