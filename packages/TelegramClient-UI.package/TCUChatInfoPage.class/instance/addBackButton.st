drawing
addBackButton

	| backButton |

	backButton := TCUButton new
		text: 'Back';
		on: #mouseDown send: #buttonCancelPressed to: self;
		name: 'infoBackButton';
		yourself.

	self infoBar addMorph: backButton.
	backButton position: (self infoBar left + self class defaultSpacing) @ (self infoBar top + self class defaultSpacing).