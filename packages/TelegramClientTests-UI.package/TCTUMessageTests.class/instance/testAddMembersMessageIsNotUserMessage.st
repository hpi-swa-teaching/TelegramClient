testing
testAddMembersMessageIsNotUserMessage

	| addMembersEvent addMembersMessage chat |

 	chat := TCTMMocks mockBasicGroupChat.
	addMembersEvent := TCTMMocks mockMessageAddMembersFrom: {TCTMMocks mockUser1 id} to: chat id.
	addMembersMessage := TCCMessage newFromMessageEvent: addMembersEvent in: chat with: self core.

	self wantsToTest: (TCUMessage newFrom: addMembersMessage).
	self deny: self subject isUserMessage.