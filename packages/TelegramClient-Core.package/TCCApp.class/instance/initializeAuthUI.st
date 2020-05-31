initialization
initializeAuthUI

	"self authUI: (TCUAuthentication new
		when: #phoneNumberSet send: #setPhoneNumber: to: self authHandler;
		when: #authCodeSet send: #checkAuthenticationCode: to: self authHandler)."