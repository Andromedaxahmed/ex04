#!/bin/bash
ldapsearch -H ldap://localhost -Y GSSAPI -b "ou=people,dc=42,dc=AD" "(uid=Ahmedmusse)" dn 2>/dev/null | grep '^dn:' | sed 's/^dn: //; s/^uid=\([^,]*\),.*$/uid=\1,ou=people,dc=42,dc=AD/'
