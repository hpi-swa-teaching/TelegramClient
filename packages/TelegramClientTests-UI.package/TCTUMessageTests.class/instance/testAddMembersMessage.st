testing
testAddMembersMessage

	| addMembersEvent addMembersMessage chat |

 	chat := TCTMMocks mockBasicGroupChat.
	addMembersEvent := TCTMMocks mockMessageAddMembersFrom: {TCTMMocks mockUser1 id} to: chat id.
	addMembersMessage := TCCUserMessage newFromMessageEvent: addMembersEvent in: chat with: self core.

	self wantsToTest: (TCUMessage newFrom: addMembersMessage).
	self assertReading: 'Added: Test User' in: self subject.