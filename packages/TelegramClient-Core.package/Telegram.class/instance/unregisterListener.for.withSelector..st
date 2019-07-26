event-listeners
unregisterListener: ls for: messageClass withSelector: method
	|list |
	list := (listener at: messageClass ifAbsent: [^nil]).
	list remove: (Array with: ls with: method) ifAbsent: []