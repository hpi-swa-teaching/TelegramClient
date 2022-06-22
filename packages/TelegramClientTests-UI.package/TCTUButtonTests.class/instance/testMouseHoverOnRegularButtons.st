hovering
testMouseHoverOnRegularButtons

	| button normalColor |

	button := TCUButton new.
	normalColor := button color.
	button mouseEnter: EventMorph new.
	self deny: normalColor = button color.
	button mouseLeave: EventMorph new.
	self assert: normalColor = button color.