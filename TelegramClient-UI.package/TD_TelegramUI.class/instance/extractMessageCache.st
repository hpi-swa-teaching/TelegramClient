calculating
extractMessageCache
	|result |
	debouncer reset.
	result := Array new: messageCache size.
	1 to: messageCache size do: [:i | | t msg usr usrName |
	msg :=  (messageCache at: (messageCache size - i + 1)).
	usr := userCache at: msg sender_user_id ifAbsent: [nil].
	usr isNil ifTrue: [
		usrName := 'UNKOWN'.
		] ifFalse: [
		usrName := usr username.
		usrName isEmpty ifTrue: [
			usrName := usr first_name, ' ', usr last_name]].
	t := ((usrName, ': '), msg content asString) asText.
	msg is_outgoing ifTrue: [
		t addAttribute:  (TextColor color: Color green).
		] ifFalse: [
		usr isNil ifFalse:[
			t addAttribute:  (TextColor color: (Color colorFrom: (self getColorArrayFrom: usr)))]].
	result at: i put: t].
	^ result
