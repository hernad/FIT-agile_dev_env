Agile deployment
=================

https://github.com/opscode/knife-rackspace



~/FIT/SI/agile_dev_env/rackspace$ knife rackspace image list
ID   Name                                                     
100  Arch 2012.08                                             
114  CentOS 5.6                                               
121  CentOS 5.8                                               
118  CentOS 6.0                                               
122  CentOS 6.2                                               
127  CentOS 6.3                                               
104  Debian 6 (Squeeze)                                       
120  Fedora 16                                                
126  Fedora 17                                                
107  FreeBSD 9.0                                              
108  Gentoo 12.3                                              
110  Red Hat Enterprise Linux 5.5                             
111  Red Hat Enterprise Linux 6                               
112  Ubuntu 10.04 LTS                                         
115  Ubuntu 11.04                                             
119  Ubuntu 11.10                                             
125  Ubuntu 12.04 LTS                                         
85   Windows Server 2008 R2 x64                               
86   Windows Server 2008 R2 x64 + SQL Server 2008 R2 Standard 
89   Windows Server 2008 R2 x64 + SQL Server 2008 R2 Web      
91   Windows Server 2008 R2 x64 + SQL Server 2012 Standard    
92   Windows Server 2008 R2 x64 + SQL Server 2012 Web         
24   Windows Server 2008 SP2 x64                              
57   Windows Server 2008 SP2 x64 + SQL Server 2008 R2 Standard
31   Windows Server 2008 SP2 x86                              
56   Windows Server 2008 SP2 x86 + SQL Server 2008 R2 Standard
109  openSUSE 12 

~/FIT/SI/agile_dev_env/rackspace$ knife rackspace  flavor list
ID  Name           Architecture  RAM    Disk   
1   256 server     64-bit        256    10 GB  
2   512 server     64-bit        512    20 GB  
3   1GB server     64-bit        1024   40 GB  
4   2GB server     64-bit        2048   80 GB  
5   4GB server     64-bit        4096   160 GB 
6   8GB server     64-bit        8192   320 GB 
7   15.5GB server  64-bit        15872  620 GB 
8   30GB server    64-bit        30720  1200 GB


create server
--------------

koristim opscode free hosting platform (do 5 node-ova) za test

knife.rb u tekucem direktoriju:
<pre>
current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "hernad"
client_key               "#{current_dir}/hernad.pem"
validation_client_name   "bringout-validator"
validation_key           "#{current_dir}/bringout-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/bringout"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]


knife[:rackspace_api_username] = "bringout"
knife[:rackspace_api_key] = "nasapikljuc"
#knife[:rackspace_version] = 'v2'
</pre>

create ubuntu 12.04 server (image 125), sa 256MB/10GB (flavor 1):

knife rackspace server create -I 125 -f 1
<pre>
Instance ID: 21227030
Host ID: e3a2f3839a34c81158ef5ffd3969eb58
Name: slice21227030
Flavor: 256 server
Image: Ubuntu 12.04 LTS
Metadata: {}

Waiting server.....................................................................................................
Public DNS Name: 184-106-136-209.static.cloud-ips.com
Public IP Address: 184.106.136.209
Private IP Address: 10.179.249.34
Password: vakonako

Waiting for sshddone
Bootstrapping Chef on 184.106.136.209
184.106.136.209 --2012-10-31 15:30:01--  http://opscode.com/chef/install.sh
184.106.136.209 Resolving opscode.com (opscode.com)... 
184.106.136.209 184.106.28.82
184.106.136.209 
184.106.136.209 Connecting to opscode.com (opscode.com)|184.106.28.82|:80... 
184.106.136.209 connected.
184.106.136.209 HTTP request sent, awaiting response... 
184.106.136.209 301 Moved Permanently
184.106.136.209 Location: http://www.opscode.com/chef/install.sh [following]
184.106.136.209 --2012-10-31 15:30:01--  http://www.opscode.com/chef/install.sh
184.106.136.209 Resolving www.opscode.com (www.opscode.com)... 
184.106.136.209 184.106.28.83
184.106.136.209 
184.106.136.209 Connecting to www.opscode.com (www.opscode.com)|184.106.28.83|:80... 
184.106.136.209 connected.
184.106.136.209 HTTP request sent, awaiting response... 
184.106.136.209 200 OK
184.106.136.209 Length: 
184.106.136.209 6396
184.106.136.209  (6.2K)
184.106.136.209  [application/x-sh]
184.106.136.209 Saving to: `STDOUT'
184.106.136.209 
184.106.136.209 
184.106.136.209  0% [                                       ] 0           --.-K/s              
100%[======================================>] 6,396       --.-K/s   in 0.001s  
184.106.136.209 
184.106.136.209 2012-10-31 15:30:01 (4.07 MB/s) - written to stdout [6396/6396]
184.106.136.209 
184.106.136.209 Downloading Chef 10.16.2 for ubuntu...
184.106.136.209 Installing Chef 10.16.2
184.106.136.209 Selecting previously unselected package chef.
184.106.136.209 (Reading database ... 
(Reading database ... 5%
(Reading database ... 10%
(Reading database ... 15%
(Reading database ... 20%
(Reading database ... 25%
...
(Reading database ... 70%
(Reading database ... 75%
(Reading database ... 80%
(Reading database ... 85%
(Reading database ... 90%
(Reading database ... 95%
(Reading database ... 100%
(Reading database ... 
184.106.136.209 51499 files and directories currently installed.)
184.106.136.209 Unpacking chef (from .../chef_10.16.2_amd64.deb) ...
184.106.136.209 Setting up chef (10.16.2-1.ubuntu.11.04) ...
184.106.136.209 Thank you for installing Chef!
184.106.136.209 [2012-10-31T15:30:12+00:00] INFO: *** Chef 10.16.2 ***
184.106.136.209 [2012-10-31T15:30:13+00:00] INFO: Client key /etc/chef/client.pem is not present - registering
184.106.136.209 [2012-10-31T15:30:24+00:00] INFO: Setting the run_list to [] from JSON
184.106.136.209 [2012-10-31T15:30:24+00:00] INFO: Run List is []
184.106.136.209 [2012-10-31T15:30:24+00:00] INFO: Run List expands to []
184.106.136.209 [2012-10-31T15:30:24+00:00] INFO: Starting Chef Run for 21227030
184.106.136.209 [2012-10-31T15:30:24+00:00] INFO: Running start handlers
184.106.136.209 [2012-10-31T15:30:24+00:00] INFO: Start handlers complete.
184.106.136.209 [2012-10-31T15:30:29+00:00] INFO: Loading cookbooks []
184.106.136.209 [2012-10-31T15:30:29+00:00] WARN: Node 21227030 has an empty run list.
184.106.136.209 [2012-10-31T15:30:31+00:00] INFO: Chef Run complete in 6.415354344 seconds
184.106.136.209 [2012-10-31T15:30:31+00:00] INFO: Running report handlers
184.106.136.209 [2012-10-31T15:30:31+00:00] INFO: Report handlers complete

Instance ID: 21227030
Host ID: e3a2f3839a34c81158ef5ffd3969eb58
Name: slice21227030
Flavor: 256 server
Image: Ubuntu 12.04 LTS
Metadata: {}
Public DNS Name: 184-106-136-209.static.cloud-ips.com
Public IP Address: 184.106.136.209
Private IP Address: 10.179.249.34
Password: vakonako 
Environment: _default
</pre>

~/FIT/SI/agile_dev_env/rackspace$ knife rackspace server list
<pre>
Instance ID  Name           Public IP       Private IP    Flavor  Image  State 
21226951     slice21226951  108.166.113.64  10.176.46.37  1       125    active
</pre>

~/FIT/SI/agile_dev_env/rackspace$ knife rackspace server delete 21226951
<pre>
Instance ID: 21226951
Host ID: 865573d91c03944d369f4c34cdc10c69
Name: slice21226951
Flavor: 256 server
Image: Ubuntu 12.04 LTS
Public IP Address: 108.166.113.64
Private IP Address: 10.176.46.37

Do you really want to delete this server? (Y/N) y
WARNING: Deleted server 21226951
WARNING: Corresponding node and client for the 21226951 server were not deleted and remain registered with the Chef Server
</pre>

chef-solo
----------

root@slice21226951:~# curl -L http://opscode.com/chef/install.sh | sudo bash
<pre>
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   184  100   184    0     0   2881      0 --:--:-- --:--:-- --:--:-- 15333
100  6396  100  6396    0     0  62956      0 --:--:-- --:--:-- --:--:-- 62956
Downloading Chef  for ubuntu...
Installing Chef 
Selecting previously unselected package chef.
(Reading database ... 51499 files and directories currently installed.)
Unpacking chef (from .../tmp.r1ZRAchr/chef__amd64.deb) ...
Setting up chef (10.16.2-1.ubuntu.11.04) ...
Thank you for installing Chef!
</pre>

root@slice21226951:~# chef-solo --version
<pre>
Chef: 10.16.2
</pre>

root@slice21226951:~#
<pre>
mkdir -p ~/chef-repo/cookbooks/my_thing/recipes/
echo -e "file_cache_path '${HOME}/.chef/cache'\ncookbook_path '${HOME}/chef-repo/cookbooks'\nchecksum_path '${HOME}/.chef/checksums'" > ~/chef-repo/solo.rb
echo '{"run_list": [ "recipe[my_thing]" ] }' > ~/chef-repo/node.json
echo 'log "Im running Chef!"' > ~/chef-repo/cookbooks/my_thing/recipes/default.rb
</pre>

chef-solo -N guineapig -j node.json -c solo.rb
<pre>
[2012-10-31T15:05:01+00:00] INFO: *** Chef 10.16.2 ***
[2012-10-31T15:05:03+00:00] INFO: Setting the run_list to ["recipe[my_thing]"] from JSON
[2012-10-31T15:05:03+00:00] INFO: Run List is [recipe[my_thing]]
[2012-10-31T15:05:03+00:00] INFO: Run List expands to [my_thing]
[2012-10-31T15:05:03+00:00] INFO: Starting Chef Run for guineapig
[2012-10-31T15:05:03+00:00] INFO: Running start handlers
[2012-10-31T15:05:03+00:00] INFO: Start handlers complete.
[2012-10-31T15:05:03+00:00] INFO: Processing log[Im running Chef!] action write (my_thing::default line 1)
[2012-10-31T15:05:03+00:00] INFO: Im running Chef!
[2012-10-31T15:05:03+00:00] INFO: Chef Run complete in 0.006320927 seconds
[2012-10-31T15:05:03+00:00] INFO: Running report handlers
[2012-10-31T15:05:03+00:00] INFO: Report handlers complete
</pre>

