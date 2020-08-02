drawing
addNewChatButtonTo: aMorph withSpacing: aSpacing

	| newChatButton |

	newChatButton := TCUButton new
	 	text: '+ Chat';
		on: #mouseUp send: #newChatButtonClicked to: self.
	newChatButton text color: Color white.
	newChatButton position: (aMorph position x + newChatButton width + (4 * aSpacing)) @ aSpacing.

	aMorph addMorph: newChatButton.