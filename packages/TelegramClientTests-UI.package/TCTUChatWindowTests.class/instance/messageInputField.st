accessing
messageInputField

	^ (self subject findByClass: TextMorph) findByCriteria: [:textMorph | textMorph isLocked not]
	