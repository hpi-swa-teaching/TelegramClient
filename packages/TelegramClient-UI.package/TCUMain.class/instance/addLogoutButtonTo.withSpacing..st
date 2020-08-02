drawing
addLogoutButtonTo: aMorph withSpacing: aSpacing

	| logoutButton |

	logoutButton := TCUButton new
	 	text: 'logout';
		on: #mouseUp send: #logout to: self.
	logoutButton position: (aMorph position x + aMorph width - logoutButton width - aSpacing) @ aSpacing.

	aMorph addMorph: logoutButton.