-- Mail.applescript
-- iCal

on show_mail_sbrs(subjectLine, messageText, myrecipients)
	tell application "Mail"
		set mymail to (make new outgoing message at the beginning of outgoing messages with properties {subject:subjectLine, content:messageText})
		repeat with i from (count of myrecipients) to 1 by -1
			tell mymail to make new to recipient at beginning of to recipients with properties {address:(item i of myrecipients)}
		end repeat
		set visible of mymail to true
		activate
	end tell
end show_mail_sbrs

on show_mail_sbr(subjectLine, messageText, myrecipient, myrecipientname)
	tell application "Mail"
		set mymail to (make new outgoing message at the beginning of outgoing messages with properties {subject:subjectLine, content:messageText})
		tell mymail to make new to recipient at beginning of to recipients with properties {address:myrecipient, name:myrecipientname}
		set visible of mymail to true
		activate
	end tell
end show_mail_sbr

on send_mail_sb(subjectLine, messageText)
	tell application "Mail"
		set mymail to (make new outgoing message at the beginning of outgoing messages with properties {subject:subjectLine, content:messageText})
		set visible of mymail to true
		activate
	end tell
end send_mail_sb

on send_mail_sbr(subjectLine, messageText, myrecipient, myrecipientname)
	tell application "Mail"
		set mymail to (make new outgoing message at the beginning of outgoing messages with properties {subject:subjectLine, content:messageText})
		tell mymail to make new to recipient at beginning of to recipients with properties {address:myrecipient, name:myrecipientname}
		send mymail
	end tell
end send_mail_sbr

on send_mail_sbrp(subjectLine, messageText, myrecipient, myrecipientname, invitationPath)
	set pfile to POSIX file invitationPath
	set myfile to pfile as alias
	tell application "Mail"
		set mymail to (make new outgoing message at the beginning of outgoing messages with properties {subject:subjectLine, content:messageText})
		tell mymail to make new to recipient at beginning of to recipients with properties {address:myrecipient, name:myrecipientname}
		tell mymail
			tell content
				make new attachment with properties {file name:myfile} at after the last word of the the last paragraph
			end tell
		end tell
		send mymail
	end tell
end send_mail_sbrp

on send_mail_sbp(subjectLine, messageText, invitationPath)
	set pfile to POSIX file invitationPath
	set myfile to pfile as alias
	tell application "Mail"
		set mymail to (make new outgoing message at the beginning of outgoing messages with properties {subject:subjectLine, content:messageText})
		tell mymail
			tell content
				make new attachment with properties {file name:myfile} at after the last word of the the last paragraph
			end tell
		end tell
		set visible of mymail to true
		activate
	end tell
end send_mail_sbp



property ASDScriptUniqueIdentifier : "Mail.applescript"