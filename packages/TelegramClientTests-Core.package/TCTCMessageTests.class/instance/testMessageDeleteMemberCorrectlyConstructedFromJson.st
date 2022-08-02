testing
testMessageDeleteMemberCorrectlyConstructedFromJson

	| chat deleteMemberEvent deleteMemberMessage |

 	chat := TCTMMocks mockBasicGroupChat.
	deleteMemberEvent := TCTMMocks mockMessageDeleteMemberWith: TCTMMocks mockUser1 id from: chat id.
	deleteMemberMessage := TCCMessage newFromMessageEvent: deleteMemberEvent in: chat with: self core.

	self assert: deleteMemberMessage member equals: (TCTMMocks mockUser1 id).
	self assert: 'Removed: Test User' equals: deleteMemberMessage asSnippet.
	self assert: 'Removed: Test User' equals: deleteMemberMessage asText