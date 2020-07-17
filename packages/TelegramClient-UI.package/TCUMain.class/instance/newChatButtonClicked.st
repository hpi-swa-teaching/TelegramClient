initialization
newChatButtonClicked

	| inputField modal |
	modal := (TCUModal newWithText: 'Create new Chat with TelegramTag: ' type: 'information').
	inputField := TextMorph new
		contentsWrapped: '@';
		backgroundColor: Color white;
		borderWidth: 2;
		extent: 200 @ 50;
		borderColor: TCUDefaultValues colorLightBlue.
	inputField crAction: [self core searchChat: inputField text. modal delete].

	modal
		addMorphCentered: inputField;
		openCenteredInWorld.