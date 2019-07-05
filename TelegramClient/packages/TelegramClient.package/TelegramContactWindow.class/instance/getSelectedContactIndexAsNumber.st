as yet unclassified
getSelectedContactIndexAsNumber
	1 to: users size do: [ :i | (self userToUIString: (users at: i)) = selectedContactIndex ifTrue: [^ i]].
	^ 0.