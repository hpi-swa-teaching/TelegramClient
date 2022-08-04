testing
testDeleteMemberMessageIsNotUserMessage

	| deleteMemberEvent deleteMemberMessage chat |

 	chat := TCTMMocks mockBasicGroupChat.
	deleteMemberEvent := TCTMMocks mockMessageDeleteMemberWith: TCTMMocks mockUser1 id from: chat id.
	deleteMemberMessage := TCCMessage newFromMessageEvent: deleteMemberEvent in: chat with: self core.

	self wantsToTest: (TCUMessage newFrom: deleteMemberMessage).
	self deny: self subject isUserMessage