api calls
apiGetEnvironmentVariable: lpName with: lpBuffer with: nSize
   <apicall: ulong 'GetEnvironmentVariableA' (char* byte* ulong) module: 'kernel32.dll'>
   ^self externalCallFailed