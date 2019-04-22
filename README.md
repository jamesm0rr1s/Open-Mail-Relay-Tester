# Open Mail Relay Tester (MailTest)

MailTest is a penetration testing and red teaming tool that automates the testing of open mail relays.

## Installation

Clone the GitHub repository
```
git clone https://github.com/jamesm0rr1s/Open-Mail-Relay-Tester /opt/jamesm0rr1s/Open-Mail-Relay-Tester
```

## Usage

 - Update the email addresses and IP address in "/opt/jamesm0rr1s/Open-Mail-Relay-Tester/testOpenMailRelay.sh"
 - Test the open mail relay by running one of the following commands:
    - e2e: external to external domain
	- e2i: external to internal domain
	- i2i: internal to internal domain
```
chmod +x /opt/jamesm0rr1s/Open-Mail-Relay-Tester/testOpenMailRelay.sh

/opt/jamesm0rr1s/Open-Mail-Relay-Tester/testOpenMailRelay.sh e2e

/opt/jamesm0rr1s/Open-Mail-Relay-Tester/testOpenMailRelay.sh e2i

/opt/jamesm0rr1s/Open-Mail-Relay-Tester/testOpenMailRelay.sh i2i
```
