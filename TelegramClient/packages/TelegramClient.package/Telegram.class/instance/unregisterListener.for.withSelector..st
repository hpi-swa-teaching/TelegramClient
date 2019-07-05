nil
unregisterListener: ls for: messageClass withSelector: method
	(listener at: messageClass) select: [:elem |
			^ ((elem at: 1) == ls) and: ((elem at: 2) == method) not.  
		]