as yet unclassified
testMouseHoverOnRegularButtons 

	| button normalColor|
	
	button := TCUButton new. 
	normalColor := button color. 
	button mouseEnter: EventMorph new. 
	self assert: normalColor ~~ button color. 