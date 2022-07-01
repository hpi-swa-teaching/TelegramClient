accessing
messageInputField

	^ (self subject findByClass: TextMorph) findByCriteria: [:textMorph | textMorph readOnly not and: [textMorph isLocked not]]