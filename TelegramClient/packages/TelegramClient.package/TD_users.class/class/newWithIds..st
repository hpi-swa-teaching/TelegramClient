instance creation
newWithIds: ids
	^(self basicNew) user_ids: ids; total_count: ids size