initialization
createHeaderMorph

	^ RectangleMorph new
		borderWidth: 0;
		color: TCUDefaultValues colorGray;
		extent: self width @ self defaultHeaderHeight