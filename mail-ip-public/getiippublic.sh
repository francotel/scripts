#!/bin/bash
# Subject
SUBJECT="EMAIL-SUBJECT"
# To
TOEMAIL="tomail@test.com"
# Message
EMAILMESSAGE="/home/user/message.txt"
echo "This is email text" >>$EMAILMESSAGE
# Sending email using /bin/mail
/bin/mail -s "$SUBJECT" "$TOEMAIL" < $EMAILMESSAGE
