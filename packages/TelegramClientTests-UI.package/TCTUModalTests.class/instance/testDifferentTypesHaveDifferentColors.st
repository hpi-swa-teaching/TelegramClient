testing
testDifferentTypesHaveDifferentColors

	| errorModal informationModal |

	informationModal := TCUModal newWithText: 'Test Modal' type: 'information'.
	errorModal := TCUModal newWithText: 'Test Modal' type: 'error'.
	self deny: informationModal color = errorModal color.