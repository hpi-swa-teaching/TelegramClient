as yet unclassified
addExtraAttribute: aString to: aJsonObjectCollection

	aJsonObjectCollection do: [:each | each at: '@extra' put: aString].