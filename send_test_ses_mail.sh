#!/bin/bash

# SMTP server configuration
SMTP_SERVER="email-smtp.us-east-1.amazonaws.com"
SMTP_PORT=465
USERNAME="" # Replace with your SMTP username
PASSWORD="" # Replace with your SMTP password
FROM="" # Replace with your mail
TO="" Replace with your mail
SUBJECT="Test Email from Bash"
BODY="This is a test email sent from a bash script."

# Prepare the email content with headers
EMAIL_CONTENT="From: ${FROM}\r\nTo: ${TO}\r\nSubject: ${SUBJECT}\r\n\r\n${BODY}"

# Send the email using curl
curl -v --ssl \
  --url "smtps://${SMTP_SERVER}:${SMTP_PORT}" \
  --mail-from "${FROM}" \
  --mail-rcpt "${TO}" \
  --user "${USERNAME}:${PASSWORD}" \
  -T <(echo -e "${EMAIL_CONTENT}")

