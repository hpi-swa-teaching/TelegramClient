initialization
newChatButtonClicked

	| inputField modal|
	modal := (TCUModal newWithText: 'Create new Chat with Handle: ' type: 'information').
	inputField := TextMorph new
		contentsWrapped:  'search...';
		backgroundColor: Color white;
		borderWidth: 2;
		extent: 200 @ 50;
		borderColor: TCUDefaultValues colorLightBlue.
	inputField crAction: [self core searchChat: inputField text. modal delete].

	modal 
		addMorphCentered: inputField;
		openCenteredInWorld.