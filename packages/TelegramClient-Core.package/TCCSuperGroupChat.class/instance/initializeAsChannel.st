accessing
initializeAsChannel

	| channelSender |
	channelSender := TCCUser new
		firstName: self title;
		id: self id.
	"self core userStore at: self groupId put: channelSender."