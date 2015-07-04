*PerspectiveBrowser-SVC
overlayDirtyIcon 
	^ icons
			at: #'overlayDirtyIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self overlayDirtyIconContents readStream) ]