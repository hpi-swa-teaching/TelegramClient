drawing
loadMoreUsers

	|newMembers|
	"newMembers := self chat loadNextMembers"
	newMembers := {TCCUser new firstName: 'tes1'; lastName: 'user'.
	TCCUser new firstName: 'test2'; lastName: 'user'.
	TCCUser new firstName: 'test3'; lastName: 'user'.
	TCCUser new firstName: 'test4'; lastName: 'user'.
	TCCUser new firstName: 'test5'; lastName: 'user'.
	TCCUser new firstName: 'test6'; lastName: 'user'.}.
	self userList addNewMembers: newMembers. 