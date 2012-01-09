# Twitter filter

This intercepts communications with the twitter server and allows you to filter tweets.

# Usage

Generate an appropriate self-signed certificate

    ./generate-cert.sh

You will then need to add `cert/cerver.crt` as a trusted certificate to your local machine.

Add the appropriate entries to your hosts file

    sudo ./setup-hosts.sh

Run the script

    node index.js
