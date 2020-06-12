accessing
sendPhoneNumber: aNumber

	self client send: '{"@type": "setAuthenticationPhoneNumber", "phone_number": "', aNumber, '"}'.