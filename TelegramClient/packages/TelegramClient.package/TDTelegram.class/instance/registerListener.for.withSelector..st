nil
registerListener: ls for: messageClass withSelector: method
	(listener at: messageClass ifAbsent: [ |list|
		list := OrderedCollection new.
		list add:  (Array with: ls with: method). 
		^ listener add: messageClass -> list.
		]
	) add: (Array with: ls with: method). 