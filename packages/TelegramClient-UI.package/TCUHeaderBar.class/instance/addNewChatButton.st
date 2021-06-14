initialization
addNewChatButton

	| newChatButton |

	newChatButton := (TCUButton new
	 	text: '+ Chat';
		on: #mouseUp send: #newChatButtonClicked to: self).

	newChatButton text color: Color white.
	newChatButton position: (self main position x + newChatButton width + (4 * self class defaultSpacing)) @ self class defaultSpacing.

	self addMorph: newChatButton.