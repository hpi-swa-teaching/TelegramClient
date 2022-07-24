testing
testDeleteMemberMessage

	| deleteMemberEvent deleteMemberMessage chat |

 	chat := TCTMMocks mockBasicGroupChat.
	deleteMemberEvent := TCTMMocks mockMessageDeleteMemberWith: TCTMMocks mockUser1 id from: chat id.
	deleteMemberMessage := TCCUserMessage newFromMessageEvent: deleteMemberEvent in: chat with: self core.

	self wantsToTest: (TCUMessage newFrom: deleteMemberMessage).
	self assertReading: 'Removed: Test User' in: self subject