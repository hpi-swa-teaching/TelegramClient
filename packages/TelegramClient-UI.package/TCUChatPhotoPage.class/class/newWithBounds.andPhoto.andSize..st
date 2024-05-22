as yet unclassified
newWithBounds: aRectangle andPhoto: aPhoto andSize: aSize

	^ (super newBounds: aRectangle)
		photo: aPhoto;
		photoSize: aSize;
		addPhoto;
		yourself