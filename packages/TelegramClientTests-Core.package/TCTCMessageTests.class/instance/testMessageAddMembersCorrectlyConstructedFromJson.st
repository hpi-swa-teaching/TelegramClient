testing
testMessageAddMembersCorrectlyConstructedFromJson

	| chat addMembersEvent addMembersMessage |

 	chat := TCTMMocks mockBasicGroupChat.
	addMembersEvent := TCTMMocks mockMessageAddMembersFrom: #(TCTMMocks mockUser2 id) to: chat id.
	addMembersMessage := TCCUserMessage newFromMessageEvent: addMembersEvent in: chat with: self core.

	self assert: addMembersMessage members equals: #(TCTMMocks mockUser2 id)