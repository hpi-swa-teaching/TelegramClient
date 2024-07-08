accessing
downloadAllDependencies

	self libs do: [ :lib | lib downloadArchiveIfNotExists ]