image
mockImageResponseJson
	"@linter-ignore"

	^ JsonObject newFrom: {
		'@type'->'file'.
		'expected_size'->64403.
		'id'->self mockImageId.
		'local'->(JsonObject newFrom: {
			'@type'->'localFile'.
			'can_be_deleted'->true.
			'can_be_downloaded'->true.
			'download_offset'->0.
			'downloaded_prefix_size'->64403.
			'downloaded_size'->64403.
			'is_downloading_active'->false.
			'is_downloading_completed'->true.
			'path'->self mockImagePath.
		}).
		'remote'->(JsonObject newFrom: {
			'@type'->'remoteFile'.
			'id'->self mockImageId asString.
			'is_uploading_active'->false.
			'is_uploading_completed'->true.
			'unique_id'->self mockImageId asString.
			'uploaded_size'->64403.
		}).
		'size'->64403.
	}