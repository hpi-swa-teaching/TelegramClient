accessing
setTDLibParams

 	self client send: '{"@type": "setTdlibParameters", "parameters": {
                                                        "database_directory": "tdlib",
                                                        "use_message_database": true,
                                                        "use_secret_chats": true,
                                                        "api_id": 94575,
                                                        "api_hash": "a3406de8d171bb422bb6ddf3bbd800e2",
                                                        "system_language_code": "en",
                                                        "device_model": "Desktop",
                                                        "system_version": "', self client specificClient type, '",
                                                        "application_version": "1.0",
                                                        "enable_storage_optimizer": true}}'.