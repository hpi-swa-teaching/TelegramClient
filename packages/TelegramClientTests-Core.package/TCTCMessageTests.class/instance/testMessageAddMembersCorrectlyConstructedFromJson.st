testing
testMessageAddMembersCorrectlyConstructedFromJson

	| chat addMembersEvent addMembersMessage |

 	chat := TCTMMocks mockBasicGroupChat.
	addMembersEvent := TCTMMocks mockMessageAddMembersFrom: {TCTMMocks mockUser1 id} to: chat id.
	addMembersMessage := TCCUserMessage newFromMessageEvent: addMembersEvent in: chat with: self core.

	self assert: addMembersMessage members equals: {TCTMMocks mockUser1 id}.
	self assert: 'Added: Test User' equals: addMembersMessage asSnippet.
	self assert: 'Added: Test User' equals: addMembersMessage asText