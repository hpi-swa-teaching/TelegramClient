initialization
addLogoutButton

	| logoutButton |

	logoutButton := TCUButton new
	 	text: 'logout';
		on: #mouseUp send: #logout to: self main.
	logoutButton position: (self main position x + self main width - logoutButton width - self defaultSpacing) @ self defaultSpacing.

	self addMorph: logoutButton.