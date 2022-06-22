as yet unclassified
testHoverOnTitleBar

	| titleBar normalColor |

	self openAnyChat.
	titleBar := self subject chatWindow titleBar.
	normalColor := titleBar color.
	titleBar mouseEnter: EventMorph new.
	self deny: normalColor = titleBar color.
	titleBar mouseLeave: EventMorph new.
	self assert: normalColor = titleBar color.