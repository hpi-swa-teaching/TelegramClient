event handling
addExtraAttribute: aString to: aJsonObjectCollection

	aJsonObjectCollection do: [:each | each at: '@extra' put: aString].