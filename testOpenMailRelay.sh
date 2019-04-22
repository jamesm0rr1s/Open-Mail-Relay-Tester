#! /bin/bash

# Test an open mail relay using telnet.

# Send email from an external domain to an external domain
# ./testOpenMailRelay.sh e2e

# Send email from an external domain to an internal domain
# ./testOpenMailRelay.sh e2i

# Send email from an internal domain to an internal domain
# ./testOpenMailRelay.sh i2i

# Check for open mail relay
checkMailRelay(){

	# Set variables
	mailFrom=$1
	mailTo=$2
	from=$3
	to=$4
	subject=$5
	body=$6

	# Echo commands
	echo "ehlo mail.example.com"
	echo "MAIL FROM: <$from>"
	echo "RCPT TO: <$to>"
	echo "DATA"
	echo "From: <$from>"
	echo "To: <$to>"
	echo "Subject: $subject"
	echo "$body"
	echo "."
	echo "quit"
}

# Set the external email addresses
externalFrom="name@example.com"
externalTo=$externalFrom

# Set the internal email addresses
internalFrom="name@example.com"
internalTo=$internalFrom

# Set the IP address and port
ip=1.2.3.4
port=25

# Check if there was not an argument
if [[ $# -eq 0 ]]; then
	echo "No arguments detected. (e2e, e2i, i2i)"
	exit 1
fi

# Check for "e2e"
if [[ $1 == "e2e" ]]; then

	# Try external to external
	checkMailRelay $externalFrom $externalTo $externalFrom $externalTo "Testing: External to External" "Testing: External to External" | telnet $ip $port

# Check for "e2i"
elif [[ $1 == "e2i" ]]; then

	# Try external to internal
	checkMailRelay $externalFrom $internalTo $externalFrom $internalTo "Testing: External to Internal" "Testing: External to Internal" | telnet $ip $port

# Check for "i2i"
elif [[ $1 == "i2i" ]]; then

	# Try internal to internal
	checkMailRelay $internalFrom $internalTo $internalFrom $internalTo "Testing: Internal to Internal" "Testing: Internal to Internal" | telnet $ip $port

fi