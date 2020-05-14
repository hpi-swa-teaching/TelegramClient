initialize-release
setPhoneNumber: aNumber

	self Send: ('{"@type": "setAuthenticationPhoneNumber", "phone_number": "', aNumber, '"}').