testing
fetchClasses: aCollection

	aCollection do: [ :aClass |
		aClass category ifNotNil: [
		(self category: aClass category)
			add: aClass name]].