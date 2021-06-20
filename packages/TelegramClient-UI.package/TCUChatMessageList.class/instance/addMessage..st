messages
addMessage: aMessage

	| newMessage wrapper |

	newMessage := TCUMessage newFromTCCMessage: aMessage.
	wrapper := Morph new height: newMessage height; width: self width - self vScrollBar width - (self class defaultMessageMargin*2); color: Color white; layoutPolicy: TableLayout new.
	newMessage isOutgoing ifTrue: [
		wrapper listDirection: #rightToLeft.
		] ifFalse: [
		wrapper listDirection: #leftToRight. 
		].
	wrapper addMorph: newMessage. 
	self content addMorphBack: wrapper.
	self messages add: wrapper.