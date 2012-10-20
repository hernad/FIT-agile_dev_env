INSTALL proces
=================

virtualbox, vagrant
--------------------

ruby

gem install vagrant

(ver 1.0.5 aktuelna)


jenkins, git client
------------------------

<pre>
vagrant@precise64:~$ sudo apt-get install jenkins git-core

vagrant@precise64:~$ wget http://localhost:8080/jnlpJars/jenkins-cli.jar


--2012-10-20 09:43:31--  http://localhost:8080/jnlpJars/jenkins-cli.jar
Resolving localhost (localhost)... 127.0.0.1
Connecting to localhost (localhost)|127.0.0.1|:8080... connected.
HTTP request sent, awaiting response... 200 OK
Length: 595952 (582K) [application/java-archive]
Saving to: `jenkins-cli.jar'

100%[==========================================================================================================>] 595,952     --.-K/s   in 0.05s   

2012-10-20 09:43:31 (12.1 MB/s) - `jenkins-cli.jar' saved [595952/595952]

vagrant@precise64:~$ java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin \
> checkstyle cloverphp dry htmlpublisher jdepend plot pmd violations xunit
Installing checkstyle from update center
Installing cloverphp from update center
Installing dry from update center
Installing htmlpublisher from update center
Installing jdepend from update center
Installing plot from update center
Installing pmd from update center
Installing violations from update center
Installing xunit from update center
vagrant@precise64:~$ java -jar jenkins-cli.jar -s http://localhost:8080 safe-restart


sudo apt-get install php-pear php5-mysql php5-memcache php5-imagick php5-curl php-apc php5-sqlite php5-xsl php5-xdebug
</pre>



PHP PEAR
--------

<pre>
vagrant@precise64:~$ sudo su -
root@precise64:~# pear config-set auto_discover 1
config-set succeeded
root@precise64:~# pear install pear.phpqatools.org/phpqatools
pear.netpirates.net/phpDox
Attempting to discover channel "pear.phpqatools.org"...
downloading channel.xml ...
Starting to download channel.xml (859 bytes)
....done: 859 bytes
Auto-discovered channel "pear.phpqatools.org", alias "phpqatools",
adding to registry

Attempting to discover channel "pear.netpirates.net"...
downloading channel.xml ...
Starting to download channel.xml (827 bytes)
...done: 827 bytes
Auto-discovered channel "pear.netpirates.net", alias "theseer", adding
to registry
Failed to download theseer/phpDox within preferred state "stable",
latest release is version 0.4.0, stability "alpha", use
"channel://pear.netpirates.net/phpDox-0.4.0" to install
Attempting to discover channel "pear.phpunit.de"...
downloading channel.xml ...
Starting to download channel.xml (804 bytes)
...done: 804 bytes
Auto-discovered channel "pear.phpunit.de", alias "phpunit", adding to
registry
Attempting to discover channel "pear.pdepend.org"...
downloading channel.xml ...
Starting to download channel.xml (812 bytes)
...done: 812 bytes
Auto-discovered channel "pear.pdepend.org", alias "pdepend", adding to
registry
Attempting to discover channel "pear.phpmd.org"...
downloading channel.xml ...
Starting to download channel.xml (807 bytes)
...done: 807 bytes
Auto-discovered channel "pear.phpmd.org", alias "phpmd", adding to
registry
Did not download optional dependencies: phpunit/DbUnit, use --alldeps to
download automatically
Attempting to discover channel "pear.symfony.com"...
downloading channel.xml ...
Starting to download channel.xml (811 bytes)
...done: 811 bytes
Auto-discovered channel "pear.symfony.com", alias "symfony2", adding to
registry
Did not download optional dependencies: phpunit/PHP_Invoker, use
--alldeps to download automatically
Attempting to discover channel "components.ez.no"...
downloading channel.xml ...
Starting to download channel.xml (591 bytes)
...done: 591 bytes
Auto-discovered channel "components.ez.no", alias "ezc", adding to
registry
Did not download optional dependencies: pecl/imagick, use --alldeps to
download automatically
WARNING: "pear/PhpDocumentor" is deprecated in favor of
"channel://pear.phpdoc.org/phpdocumentor"
Did not download optional dependencies: pear/Text_Highlighter,
phpunit/PHPUnit, pear/PHP_CodeSniffer, pear/PhpDocumentor, use --alldeps
to download automatically
Did not download optional dependencies: phpunit/PHP_Timer, use --alldeps
to download automatically
WARNING: "pear/DB" is deprecated in favor of "pear/MDB2"
Did not download optional dependencies: pear/DB, pear/MDB2, pear/Mail,
use --alldeps to download automatically
phpqatools/phpqatools can optionally use package "phpunit/DbUnit"
phpunit/PHPUnit can optionally use package "phpunit/PHP_Invoker"
(version >= 1.1.0)
phpunit/phploc can optionally use PHP extension "bytekit"
phpqatools/PHP_CodeBrowser can optionally use package
"pear/Text_Highlighter" (version >= 0.7.1)
phpqatools/PHP_CodeBrowser can optionally use package
"pear/PhpDocumentor" (version >= 1.4.3)
pear/Log can optionally use package "pear/DB" (version >= 1.3)
pear/Log can optionally use package "pear/MDB2" (version >= 2.0.0RC1)
pear/Log can optionally use package "pear/Mail"
pear/Log can optionally use PHP extension "sqlite"
downloading phpqatools-1.0.2.tgz ...
Starting to download phpqatools-1.0.2.tgz (1,054 bytes)
...done: 1,054 bytes
downloading PHPUnit-3.7.8.tgz ...
Starting to download PHPUnit-3.7.8.tgz (115,978 bytes)
...done: 115,978 bytes
downloading PHPUnit_SkeletonGenerator-1.2.0.tgz ...
Starting to download PHPUnit_SkeletonGenerator-1.2.0.tgz (11,210 bytes)
...done: 11,210 bytes
downloading PHP_Depend-1.1.0.tgz ...
Starting to download PHP_Depend-1.1.0.tgz (182,692 bytes)
...done: 182,692 bytes
downloading PHP_PMD-1.4.0.tgz ...
Starting to download PHP_PMD-1.4.0.tgz (46,482 bytes)
...done: 46,482 bytes
downloading phpcpd-1.4.0.tgz ...
Starting to download phpcpd-1.4.0.tgz (10,439 bytes)
...done: 10,439 bytes
downloading phploc-1.7.2.tgz ...
Starting to download phploc-1.7.2.tgz (10,136 bytes)
...done: 10,136 bytes
downloading PHP_CodeBrowser-1.0.3.tgz ...
Starting to download PHP_CodeBrowser-1.0.3.tgz (172,253 bytes)
...done: 172,253 bytes
downloading PHP_CodeSniffer-1.4.0.tgz ...
Starting to download PHP_CodeSniffer-1.4.0.tgz (359,576 bytes)
...done: 359,576 bytes
downloading File_Iterator-1.3.3.tgz ...
Starting to download File_Iterator-1.3.3.tgz (5,152 bytes)
...done: 5,152 bytes
downloading Text_Template-1.1.3.tgz ...
Starting to download Text_Template-1.1.3.tgz (3,594 bytes)
...done: 3,594 bytes
downloading PHP_CodeCoverage-1.2.6.tgz ...
Starting to download PHP_CodeCoverage-1.2.6.tgz (155,960 bytes)
...done: 155,960 bytes
downloading PHP_Timer-1.0.4.tgz ...
Starting to download PHP_Timer-1.0.4.tgz (3,694 bytes)
...done: 3,694 bytes
downloading PHPUnit_MockObject-1.2.1.tgz ...
Starting to download PHPUnit_MockObject-1.2.1.tgz (20,417 bytes)
...done: 20,417 bytes
downloading Yaml-2.1.2.tgz ...
Starting to download Yaml-2.1.2.tgz (38,429 bytes)
...done: 38,429 bytes
downloading ConsoleTools-1.6.1.tgz ...
Starting to download ConsoleTools-1.6.1.tgz (869,994 bytes)
...done: 869,994 bytes
downloading FinderFacade-1.0.5.tgz ...
Starting to download FinderFacade-1.0.5.tgz (4,498 bytes)
...done: 4,498 bytes
downloading Console_CommandLine-1.1.3.tgz ...
Starting to download Console_CommandLine-1.1.3.tgz (38,507 bytes)
...done: 38,507 bytes
downloading Log-1.12.7.tgz ...
Starting to download Log-1.12.7.tgz (46,898 bytes)
...done: 46,898 bytes
downloading PHP_TokenStream-1.1.5.tgz ...
Starting to download PHP_TokenStream-1.1.5.tgz (9,859 bytes)
...done: 9,859 bytes
downloading Base-1.8.tgz ...
Starting to download Base-1.8.tgz (236,357 bytes)
...done: 236,357 bytes
downloading fDOMDocument-1.3.1.tgz ...
Starting to download fDOMDocument-1.3.1.tgz (7,930 bytes)
...done: 7,930 bytes
downloading Finder-2.1.2.tgz ...
Starting to download Finder-2.1.2.tgz (19,672 bytes)
...done: 19,672 bytes
install ok: channel://pear.pdepend.org/PHP_Depend-1.1.0
install ok: channel://pear.php.net/PHP_CodeSniffer-1.4.0
install ok: channel://pear.phpunit.de/File_Iterator-1.3.3
install ok: channel://pear.phpunit.de/Text_Template-1.1.3
install ok: channel://pear.phpunit.de/PHP_Timer-1.0.4
install ok: channel://pear.symfony.com/Yaml-2.1.2
install ok: channel://pear.php.net/Console_CommandLine-1.1.3
install ok: channel://pear.php.net/Log-1.12.7
install ok: channel://pear.phpunit.de/PHP_TokenStream-1.1.5
install ok: channel://components.ez.no/Base-1.8
install ok: channel://pear.netpirates.net/fDOMDocument-1.3.1
install ok: channel://pear.symfony.com/Finder-2.1.2
install ok: channel://pear.phpmd.org/PHP_PMD-1.4.0
install ok: channel://pear.phpqatools.org/PHP_CodeBrowser-1.0.3
install ok: channel://pear.phpunit.de/PHP_CodeCoverage-1.2.6
install ok: channel://pear.phpunit.de/PHPUnit_MockObject-1.2.1
install ok: channel://components.ez.no/ConsoleTools-1.6.1
install ok: channel://pear.phpunit.de/FinderFacade-1.0.5
install ok: channel://pear.phpunit.de/PHPUnit-3.7.8
install ok: channel://pear.phpunit.de/PHPUnit_SkeletonGenerator-1.2.0
install ok: channel://pear.phpunit.de/phpcpd-1.4.0
install ok: channel://pear.phpunit.de/phploc-1.7.2
install ok: channel://pear.phpqatools.org/phpqatools-1.0.2

</pre>

