accessing
getEnvironmentVariable: aString
   "Win32Utils getEnvironmentVariable: 'windir'"

   | buffer size |
   size := self apiGetEnvironmentVariable: aString with: nil with: 0.
   buffer := String new: size.
   self apiGetEnvironmentVariable: aString with: buffer with: size.
   ^buffer allButLast