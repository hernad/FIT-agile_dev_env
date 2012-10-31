Zentyal/ubuntu Primary domain controller
=========================================

server: zentyal.bring.out.ba

useri: Administrator/bringout, hernad/test, bakir/test 


vagrant@precise32:~$ ldapsearch -x -LLL -E pr=200/noprompt -h zentyal.bring.out.ba -D "Administrator@bring.out.ba" -w bringout -b "cn=users,dc=bring,dc=out,dc=ba" -s sub "(cn=*)" cn mail sn
<pre>
dn: CN=Read-only Domain Controllers,CN=Users,DC=bring,DC=out,DC=ba
cn: Read-only Domain Controllers

dn: CN=bakir,CN=Users,DC=bring,DC=out,DC=ba
cn: bakir
sn:: SHVzcmVtb3ZpxIc=

dn: CN=Allowed RODC Password Replication
Group,CN=Users,DC=bring,DC=out,DC=ba
cn: Allowed RODC Password Replication Group

dn: CN=Administrator,CN=Users,DC=bring,DC=out,DC=ba
cn: Administrator
sn: -

dn: CN=Denied RODC Password Replication
Group,CN=Users,DC=bring,DC=out,DC=ba
cn: Denied RODC Password Replication Group

dn: CN=Domain Users,CN=Users,DC=bring,DC=out,DC=ba
cn: Domain Users

dn: CN=Guest,CN=Users,DC=bring,DC=out,DC=ba
cn: Guest

dn: CN=gitlab,CN=Users,DC=bring,DC=out,DC=ba
cn: gitlab

dn: CN=dns-zentyal,CN=Users,DC=bring,DC=out,DC=ba
cn: dns-zentyal

dn: CN=hernad,CN=Users,DC=bring,DC=out,DC=ba
cn: hernad
sn: Husremovic

dn: CN=Domain Controllers,CN=Users,DC=bring,DC=out,DC=ba
cn: Domain Controllers

dn: CN=Group Policy Creator Owners,CN=Users,DC=bring,DC=out,DC=ba
cn: Group Policy Creator Owners

dn: CN=Schema Admins,CN=Users,DC=bring,DC=out,DC=ba
cn: Schema Admins

dn: CN=Enterprise Admins,CN=Users,DC=bring,DC=out,DC=ba
cn: Enterprise Admins

dn: CN=Cert Publishers,CN=Users,DC=bring,DC=out,DC=ba
cn: Cert Publishers

dn: CN=Domain Admins,CN=Users,DC=bring,DC=out,DC=ba
cn: Domain Admins

dn: CN=DnsAdmins,CN=Users,DC=bring,DC=out,DC=ba
cn: DnsAdmins

dn: CN=RAS and IAS Servers,CN=Users,DC=bring,DC=out,DC=ba
cn: RAS and IAS Servers

dn: CN=krbtgt,CN=Users,DC=bring,DC=out,DC=ba
cn: krbtgt

dn: CN=Users,DC=bring,DC=out,DC=ba
cn: Users

dn: CN=DnsUpdateProxy,CN=Users,DC=bring,DC=out,DC=ba
cn: D=out,DC=ba
cn: Domain Guests

# pagedresults: cookie=
</pre>





vagrant@precise32:~$ ldapsearch -x -LLL -E pr=200/noprompt -h zentyal.bring.out.ba -D "Administrator@bring.out.ba" -w bringout -b "cn=users,dc=bring,dc=out,dc=ba" -s sub "(cn=hernad)"
<pre>
dn: CN=hernad,CN=Users,DC=bring,DC=out,DC=ba
objectClass: top
objectClass: posixAccount
objectClass: person
objectClass: organizationalPerson
objectClass: user
cn: hernad
sn: Husremovic
givenName: Ernad
instanceType: 4
whenCreated: 20121030115040.0Z
uSNCreated: 3788
name: hernad
objectGUID:: 6i98lnhAQkSHWbtacU5uCw==
badPwdCount: 0
codePage: 0
countryCode: 0
badPasswordTime: 0
lastLogoff: 0
lastLogon: 0
primaryGroupID: 513
objectSid:: AQUAAAAAAAUVAAAALcPe+2gUlhA3VCplUAQAAA==
accountExpires: 9223372036854775807
logonCount: 0
sAMAccountName: hernad
sAMAccountType: 805306368
userPrincipalName: hernad@BRING.OUT.BA
objectCategory: CN=Person,CN=Schema,CN=Configuration,DC=bring,DC=out,DC=ba
uidNumber: 51104
pwdLastSet: 129960714410000000
userAccountControl: 512
homeDrive: H:
whenChanged: 20121030115314.0Z
homeDirectory: \\zentyal.BRING.OUT.BA\hernad
uSNChanged: 3802
memberOf: CN=gitlab,CN=Users,DC=bring,DC=out,DC=ba
distinguishedName: CN=hernad,CN=Users,DC=bring,DC=out,DC=ba
</pre>


Omniauth-ldap - mail treba biti prvi
----------------------------------------------- 

vagrant@precise32:/opt/gitlab$ bundle show omniauth-ldap
<pre>
/home/vagrant/.rvm/gems/ruby-1.9.3-p286/bundler/gems/omniauth-ldap-f038dd852d7b
</pre>

/home/vagrant/.rvm/gems/ruby-1.9.3-p286/bundler/gems/omniauth-ldap-f038dd852d7b/lib/omniauth/strategies/ldap.rb 
<pre>
require 'omniauth'

module OmniAuth
  module Strategies
    class LDAP
      class MissingCredentialsError < StandardError; end
      include OmniAuth::Strategy
      @@config = {
        'name' => 'cn',
        'first_name' => 'givenName',
        'last_name' => 'sn',
#        'email' => 'userPrincipalName',
#        'email' => ['mail', "email", 'userPrincipalName'],
        'email' => ['mail', 'userPrincipalName', 'email'],
        'phone' => ['telephoneNumber', 'homePhone',
'facsimileTelephoneNumber'],
        'mobile' => ['mobile', 'mobileTelephoneNumber'],
</pre>

