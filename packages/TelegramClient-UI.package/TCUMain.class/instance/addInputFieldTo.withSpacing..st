defaultValues
addInputFieldTo: aMorph withSpacing: aSpacing

	| inputField |

	inputField := TextMorph new
		"contentsWrapped: 'search';"
		contents: 'search';
		borderColor: TCUDefaultValues colorLightGray;
		color: TCUDefaultValues colorLightGray;
		borderWidth: 1.
	inputField position: (aMorph position x + 170 + aSpacing) @ aSpacing.
	inputField crAction: [self core searchChat: inputField text].

	aMorph addMorph: inputField.