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
