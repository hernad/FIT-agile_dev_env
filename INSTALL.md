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
vagrant@precise64:~$ sudo apt-get install openjdk-6-jdk jenkins git-core ant curl

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



jenkins GIT scm plugin
------------------------

instalirati



jenkins workspace setup
------------------

podesiti git postavke za jenkins usera na ci serveru

<pre>
vagrant@precise64:~$ sudo su - jenkins
jenkins@precise64:~$ git config --global user.email "jenkins@bring.out.ba"
jenkins@precise64:~$ git config --global user.name "jenkins ci"
</pre>

jenkins@precise64:~/jobs$ ls
agile-php-1  php-template

config.xml smo preuzeili sa php-template.org repozitorija

<pre>
jenkins@precise64:~/jobs$ ls php-template/
config.xml  nextBuildNumber
</pre>


na osnovu ovog template-a napravili novi php projekat

<pre>
jenkins@precise64:~/jobs$ ls agile-php-1
1019987862.csv	123.csv        186376189.csv  523405415.csv  builds	 nextBuildNumber
1107599928.csv	174807245.csv  217648577.csv  594356163.csv  config.xml  workspace
</pre>



PHP phing
----------

<pre>
root@precise64:~# pear channel-discover pear.phing.info
Adding Channel "pear.phing.info" succeeded
Discovery of channel "pear.phing.info" succeeded
root@precise64:~# pear install --alldeps phing/phing
Failed to download pear/VersionControl_SVN within preferred state "stable", latest release is version 0.4.0, stability "alpha", use "channel://pear.php.net/VersionControl_SVN-0.4.0" to install
Failed to download pear/VersionControl_Git within preferred state "stable", latest release is version 0.4.4, stability "alpha", use "channel://pear.php.net/VersionControl_Git-0.4.4" to install
WARNING: "pear/PhpDocumentor" is deprecated in favor of "channel://pear.phpdoc.org/phpdocumentor"
WARNING: "pear/PEAR_PackageFileManager" is deprecated in favor of "pear/PEAR_PackageFileManager2"
Failed to download pear/Services_Amazon_S3 within preferred state "stable", latest release is version 0.4.0, stability "alpha", use "channel://pear.php.net/Services_Amazon_S3-0.4.0" to install
Attempting to discover channel "pear.docblox-project.org"...
downloading channel.xml ...
Starting to download channel.xml (849 bytes)
....done: 849 bytes
Auto-discovered channel "pear.docblox-project.org", alias "docblox", adding to registry
WARNING: "pear/PHP_CompatInfo" is deprecated in favor of "channel://bartlett.laurent-laville.org/PHP_CompatInfo"
WARNING: "pear/XML_Parser" is deprecated in favor of "pear/XML_Parser2"
Failed to download pear/Console_ProgressBar within preferred state "stable", latest release is version 0.5.2beta, stability "beta", use "channel://pear.php.net/Console_ProgressBar-0.5.2beta" to install
Failed to download pear/XML_Serializer within preferred state "stable", latest release is version 0.20.2, stability "beta", use "channel://pear.php.net/XML_Serializer-0.20.2" to install
WARNING: "pear/PHP_CompatInfo" is deprecated in favor of "channel://bartlett.laurent-laville.org/PHP_CompatInfo"
WARNING: "pear/Console_Color" is deprecated in favor of "pear/Console_Color2"
WARNING: "pear/HTML_Common" is deprecated in favor of "pear/HTML_Common2"
phing/phing can optionally use package "pear/VersionControl_SVN" (version >= 0.4.0)
phing/phing can optionally use package "pear/VersionControl_Git" (version >= 0.4.3)
phing/phing can optionally use package "pear/Services_Amazon_S3" (version >= 0.3.1)
pear/PHP_CompatInfo can optionally use package "pear/Console_ProgressBar" (version >= 0.5.2beta)
pear/PEAR_PackageFileManager_Plugins requires package "pear/XML_Serializer" (version >= 0.19.0)
pear/PEAR_PackageFileManager requires package "pear/PEAR_PackageFileManager_Plugins"
pear/PEAR_PackageFileManager2 requires package "pear/PEAR_PackageFileManager_Plugins"
downloading phing-2.4.12.tgz ...
Starting to download phing-2.4.12.tgz (452,767 bytes)
...done: 452,767 bytes
downloading phingdocs-2.4.12.tgz ...
Starting to download phingdocs-2.4.12.tgz (2,012,709 bytes)
...done: 2,012,709 bytes
downloading PhpDocumentor-1.4.4.tgz ...
Starting to download PhpDocumentor-1.4.4.tgz (1,534,088 bytes)
...done: 1,534,088 bytes
downloading xdebug-2.2.1.tgz ...
Starting to download xdebug-2.2.1.tgz (248,057 bytes)
...done: 248,057 bytes
downloading HTTP_Request2-2.1.1.tgz ...
Starting to download HTTP_Request2-2.1.1.tgz (99,151 bytes)
...done: 99,151 bytes
downloading DocBlox-0.18.1.tgz ...
Starting to download DocBlox-0.18.1.tgz (2,190,299 bytes)
...done: 2,190,299 bytes
downloading XML_Beautifier-1.2.2.tgz ...
Starting to download XML_Beautifier-1.2.2.tgz (14,587 bytes)
...done: 14,587 bytes
downloading PHP_CompatInfo-1.9.0.tgz ...
Starting to download PHP_CompatInfo-1.9.0.tgz (180,340 bytes)
...done: 180,340 bytes
downloading Net_URL2-2.0.0.tgz ...
Starting to download Net_URL2-2.0.0.tgz (11,325 bytes)
...done: 11,325 bytes
downloading DocBlox_Template_new_black-1.0.1.tgz ...
Starting to download DocBlox_Template_new_black-1.0.1.tgz (87,104 bytes)
...done: 87,104 bytes
downloading XML_Parser-1.3.4.tgz ...
Starting to download XML_Parser-1.3.4.tgz (16,040 bytes)
...done: 16,040 bytes
downloading Console_Table-1.1.4.tgz ...
Starting to download Console_Table-1.1.4.tgz (9,369 bytes)
...done: 9,369 bytes
downloading Console_Getargs-1.3.5.tgz ...
Starting to download Console_Getargs-1.3.5.tgz (18,207 bytes)
...done: 18,207 bytes
downloading File_Find-1.3.1.tgz ...
Starting to download File_Find-1.3.1.tgz (8,085 bytes)
...done: 8,085 bytes
downloading Event_Dispatcher-1.1.0.tgz ...
Starting to download Event_Dispatcher-1.1.0.tgz (8,500 bytes)
...done: 8,500 bytes
downloading Var_Dump-1.0.4.tgz ...
Starting to download Var_Dump-1.0.4.tgz (17,426 bytes)
...done: 17,426 bytes
downloading HTML_Table-1.8.3.tgz ...
Starting to download HTML_Table-1.8.3.tgz (16,994 bytes)
...done: 16,994 bytes
downloading Console_Color-1.0.3.tgz ...
Starting to download Console_Color-1.0.3.tgz (4,933 bytes)
...done: 4,933 bytes
downloading HTML_Common-1.2.5.tgz ...
Starting to download HTML_Common-1.2.5.tgz (4,585 bytes)
...done: 4,585 bytes
install ok: channel://pear.phing.info/phing-2.4.12
install ok: channel://pear.phing.info/phingdocs-2.4.12
install ok: channel://pear.php.net/PhpDocumentor-1.4.4
66 source files, building
running: phpize
Configuring for:
PHP Api Version:         20090626
Zend Module Api No:      20090626
Zend Extension Api No:   220090626
building in /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1
running: /tmp/pear/temp/xdebug/configure
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for a sed that does not truncate output... /bin/sed
checking for cc... cc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables...
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether cc accepts -g... yes
checking for cc option to accept ISO C89... none needed
checking how to run the C preprocessor... cc -E
checking for icc... no
checking for suncc... no
checking whether cc understands -c and -o together... yes
checking for system library directory... lib
checking if compiler supports -R... no
checking if compiler supports -Wl,-rpath,... yes
checking build system type... x86_64-unknown-linux-gnu
checking host system type... x86_64-unknown-linux-gnu
checking target system type... x86_64-unknown-linux-gnu
checking for PHP prefix... /usr
checking for PHP includes... -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib
checking for PHP extension directory... /usr/lib/php5/20090626
checking for PHP installed headers prefix... /usr/include/php5
checking if debug is enabled... no
checking if zts is enabled... no
checking for re2c... no
configure: WARNING: You will need re2c 0.13.4 or later if you want to regenerate PHP parsers.
checking for gawk... no
checking for nawk... nawk
checking if nawk is broken... no
checking whether to enable eXtended debugging support... yes, shared
checking Check for supported PHP versions... supported (5.3.10-1ubuntu3.4)
checking for gettimeofday... yes
checking for cos in -lm... yes
checking how to print strings... printf
checking for a sed that does not truncate output... (cached) /bin/sed
checking for fgrep... /bin/grep -F
checking for ld used by cc... /usr/bin/ld
checking if the linker (/usr/bin/ld) is GNU ld... yes
checking for BSD- or MS-compatible name lister (nm)... /usr/bin/nm -B
checking the name lister (/usr/bin/nm -B) interface... BSD nm
checking whether ln -s works... yes
checking the maximum length of command line arguments... 1572864
checking whether the shell understands some XSI constructs... yes
checking whether the shell understands "+="... yes
checking how to convert x86_64-unknown-linux-gnu file names to x86_64-unknown-linux-gnu format... func_convert_file_noop
checking how to convert x86_64-unknown-linux-gnu file names to toolchain format... func_convert_file_noop
checking for /usr/bin/ld option to reload object files... -r
checking for objdump... objdump
checking how to recognize dependent libraries... pass_all
checking for dlltool... no
checking how to associate runtime and link libraries... printf %s\n
checking for ar... ar
checking for archiver @FILE support... @
checking for strip... strip
checking for ranlib... ranlib
checking for gawk... (cached) nawk
checking command to parse /usr/bin/nm -B output from cc object... ok
checking for sysroot... no
checking for mt... mt
checking if mt is a manifest tool... no
checking for ANSI C header files... yes
checking for sys/types.h... yes
checking for sys/stat.h... yes
checking for stdlib.h... yes
checking for string.h... yes
checking for memory.h... yes
checking for strings.h... yes
checking for inttypes.h... yes
checking for stdint.h... yes
checking for unistd.h... yes
checking for dlfcn.h... yes
checking for objdir... .libs
checking if cc supports -fno-rtti -fno-exceptions... no
checking for cc option to produce PIC... -fPIC -DPIC
checking if cc PIC flag -fPIC -DPIC works... yes
checking if cc static flag -static works... yes
checking if cc supports -c -o file.o... yes
checking if cc supports -c -o file.o... (cached) yes
checking whether the cc linker (/usr/bin/ld -m elf_x86_64) supports shared libraries... yes
checking whether -lc should be explicitly linked in... no
checking dynamic linker characteristics... GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking whether stripping libraries is possible... yes
checking if libtool supports shared libraries... yes
checking whether to build shared libraries... yes
checking whether to build static libraries... no
configure: creating ./config.status
config.status: creating config.h
config.status: executing libtool commands
running: make
/bin/bash /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/libtool --mode=compile cc  -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib  -DHAVE_CONFIG_H  -g -O2   -c /tmp/pear/temp/xdebug/xdebug.c -o xdebug.lo
libtool: compile:  cc -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib -DHAVE_CONFIG_H -g -O2 -c /tmp/pear/temp/xdebug/xdebug.c  -fPIC -DPIC -o .libs/xdebug.o
/bin/bash /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/libtool --mode=compile cc  -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib  -DHAVE_CONFIG_H  -g -O2   -c /tmp/pear/temp/xdebug/xdebug_code_coverage.c -o xdebug_code_coverage.lo
libtool: compile:  cc -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib -DHAVE_CONFIG_H -g -O2 -c /tmp/pear/temp/xdebug/xdebug_code_coverage.c  -fPIC -DPIC -o .libs/xdebug_code_coverage.o
/bin/bash /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/libtool --mode=compile cc  -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib  -DHAVE_CONFIG_H  -g -O2   -c /tmp/pear/temp/xdebug/xdebug_com.c -o xdebug_com.lo
libtool: compile:  cc -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib -DHAVE_CONFIG_H -g -O2 -c /tmp/pear/temp/xdebug/xdebug_com.c  -fPIC -DPIC -o .libs/xdebug_com.o
/bin/bash /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/libtool --mode=compile cc  -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib  -DHAVE_CONFIG_H  -g -O2   -c /tmp/pear/temp/xdebug/xdebug_compat.c -o xdebug_compat.lo
libtool: compile:  cc -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib -DHAVE_CONFIG_H -g -O2 -c /tmp/pear/temp/xdebug/xdebug_compat.c  -fPIC -DPIC -o .libs/xdebug_compat.o
/bin/bash /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/libtool --mode=compile cc  -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib  -DHAVE_CONFIG_H  -g -O2   -c /tmp/pear/temp/xdebug/xdebug_handler_dbgp.c -o xdebug_handler_dbgp.lo
libtool: compile:  cc -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib -DHAVE_CONFIG_H -g -O2 -c /tmp/pear/temp/xdebug/xdebug_handler_dbgp.c  -fPIC -DPIC -o .libs/xdebug_handler_dbgp.o
/tmp/pear/temp/xdebug/xdebug_handler_dbgp.c: In function 'fetch_classname_from_zval':
/tmp/pear/temp/xdebug/xdebug_handler_dbgp.c:305:3: warning: passing argument 2 of 'z->value.obj.handlers->get_class_name' from incompatible pointer type [enabled by default]
/tmp/pear/temp/xdebug/xdebug_handler_dbgp.c:305:3: note: expected 'char **' but argument is of type 'const char **'
/tmp/pear/temp/xdebug/xdebug_handler_dbgp.c: In function 'send_message':
/tmp/pear/temp/xdebug/xdebug_handler_dbgp.c:265:2: warning: ignoring return value of 'write', declared with attribute warn_unused_result [-Wunused-result]
/bin/bash /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/libtool --mode=compile cc  -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib  -DHAVE_CONFIG_H  -g -O2   -c /tmp/pear/temp/xdebug/xdebug_handlers.c -o xdebug_handlers.lo
libtool: compile:  cc -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib -DHAVE_CONFIG_H -g -O2 -c /tmp/pear/temp/xdebug/xdebug_handlers.c  -fPIC -DPIC -o .libs/xdebug_handlers.o
/bin/bash /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/libtool --mode=compile cc  -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib  -DHAVE_CONFIG_H  -g -O2   -c /tmp/pear/temp/xdebug/xdebug_llist.c -o xdebug_llist.lo
libtool: compile:  cc -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib -DHAVE_CONFIG_H -g -O2 -c /tmp/pear/temp/xdebug/xdebug_llist.c  -fPIC -DPIC -o .libs/xdebug_llist.o
/bin/bash /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/libtool --mode=compile cc  -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib  -DHAVE_CONFIG_H  -g -O2   -c /tmp/pear/temp/xdebug/xdebug_hash.c -o xdebug_hash.lo
libtool: compile:  cc -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib -DHAVE_CONFIG_H -g -O2 -c /tmp/pear/temp/xdebug/xdebug_hash.c  -fPIC -DPIC -o .libs/xdebug_hash.o
/bin/bash /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/libtool --mode=compile cc  -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib  -DHAVE_CONFIG_H  -g -O2   -c /tmp/pear/temp/xdebug/xdebug_private.c -o xdebug_private.lo
libtool: compile:  cc -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib -DHAVE_CONFIG_H -g -O2 -c /tmp/pear/temp/xdebug/xdebug_private.c  -fPIC -DPIC -o .libs/xdebug_private.o
/bin/bash /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/libtool --mode=compile cc  -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib  -DHAVE_CONFIG_H  -g -O2   -c /tmp/pear/temp/xdebug/xdebug_profiler.c -o xdebug_profiler.lo
libtool: compile:  cc -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib -DHAVE_CONFIG_H -g -O2 -c /tmp/pear/temp/xdebug/xdebug_profiler.c  -fPIC -DPIC -o .libs/xdebug_profiler.o
/bin/bash /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/libtool --mode=compile cc  -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib  -DHAVE_CONFIG_H  -g -O2   -c /tmp/pear/temp/xdebug/xdebug_set.c -o xdebug_set.lo
libtool: compile:  cc -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib -DHAVE_CONFIG_H -g -O2 -c /tmp/pear/temp/xdebug/xdebug_set.c  -fPIC -DPIC -o .libs/xdebug_set.o
/bin/bash /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/libtool --mode=compile cc  -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib  -DHAVE_CONFIG_H  -g -O2   -c /tmp/pear/temp/xdebug/xdebug_stack.c -o xdebug_stack.lo
libtool: compile:  cc -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib -DHAVE_CONFIG_H -g -O2 -c /tmp/pear/temp/xdebug/xdebug_stack.c  -fPIC -DPIC -o .libs/xdebug_stack.o
/bin/bash /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/libtool --mode=compile cc  -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib  -DHAVE_CONFIG_H  -g -O2   -c /tmp/pear/temp/xdebug/xdebug_str.c -o xdebug_str.lo
libtool: compile:  cc -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib -DHAVE_CONFIG_H -g -O2 -c /tmp/pear/temp/xdebug/xdebug_str.c  -fPIC -DPIC -o .libs/xdebug_str.o
/bin/bash /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/libtool --mode=compile cc  -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib  -DHAVE_CONFIG_H  -g -O2   -c /tmp/pear/temp/xdebug/xdebug_superglobals.c -o xdebug_superglobals.lo
libtool: compile:  cc -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib -DHAVE_CONFIG_H -g -O2 -c /tmp/pear/temp/xdebug/xdebug_superglobals.c  -fPIC -DPIC -o .libs/xdebug_superglobals.o
/bin/bash /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/libtool --mode=compile cc  -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib  -DHAVE_CONFIG_H  -g -O2   -c /tmp/pear/temp/xdebug/xdebug_tracing.c -o xdebug_tracing.lo
libtool: compile:  cc -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib -DHAVE_CONFIG_H -g -O2 -c /tmp/pear/temp/xdebug/xdebug_tracing.c  -fPIC -DPIC -o .libs/xdebug_tracing.o
/tmp/pear/temp/xdebug/xdebug_tracing.c: In function 'xdebug_stop_trace':
/tmp/pear/temp/xdebug/xdebug_tracing.c:452:4: warning: format not a string literal and no format arguments [-Wformat-security]
/bin/bash /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/libtool --mode=compile cc  -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib  -DHAVE_CONFIG_H  -g -O2   -c /tmp/pear/temp/xdebug/xdebug_var.c -o xdebug_var.lo
libtool: compile:  cc -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib -DHAVE_CONFIG_H -g -O2 -c /tmp/pear/temp/xdebug/xdebug_var.c  -fPIC -DPIC -o .libs/xdebug_var.o
/tmp/pear/temp/xdebug/xdebug_var.c: In function 'xdebug_get_property_info':
/tmp/pear/temp/xdebug/xdebug_var.c:219:2: warning: passing argument 3 of 'zend_unmangle_property_name' from incompatible pointer type [enabled by default]
/usr/include/php5/Zend/zend_compile.h:576:14: note: expected 'char **' but argument is of type 'const char **'
/tmp/pear/temp/xdebug/xdebug_var.c:219:2: warning: passing argument 4 of 'zend_unmangle_property_name' from incompatible pointer type [enabled by default]
/usr/include/php5/Zend/zend_compile.h:576:14: note: expected 'char **' but argument is of type 'const char **'
/tmp/pear/temp/xdebug/xdebug_var.c: In function 'xdebug_var_export':
/tmp/pear/temp/xdebug/xdebug_var.c:437:5: warning: passing argument 2 of 'zend_get_object_classname' from incompatible pointer type [enabled by default]
/usr/include/php5/Zend/zend_API.h:326:14: note: expected 'char **' but argument is of type 'const char **'
/tmp/pear/temp/xdebug/xdebug_var.c: In function 'xdebug_var_synopsis':
/tmp/pear/temp/xdebug/xdebug_var.c:535:4: warning: passing argument 2 of 'zend_get_object_classname' from incompatible pointer type [enabled by default]
/usr/include/php5/Zend/zend_API.h:326:14: note: expected 'char **' but argument is of type 'const char **'
/tmp/pear/temp/xdebug/xdebug_var.c: In function 'xdebug_var_export_text_ansi':
/tmp/pear/temp/xdebug/xdebug_var.c:748:5: warning: passing argument 2 of 'zend_get_object_classname' from incompatible pointer type [enabled by default]
/usr/include/php5/Zend/zend_API.h:326:14: note: expected 'char **' but argument is of type 'const char **'
/tmp/pear/temp/xdebug/xdebug_var.c: In function 'xdebug_var_synopsis_text_ansi':
/tmp/pear/temp/xdebug/xdebug_var.c:846:4: warning: passing argument 2 of 'zend_get_object_classname' from incompatible pointer type [enabled by default]
/usr/include/php5/Zend/zend_API.h:326:14: note: expected 'char **' but argument is of type 'const char **'
/tmp/pear/temp/xdebug/xdebug_var.c: In function 'xdebug_var_export_xml_node':
/tmp/pear/temp/xdebug/xdebug_var.c:1250:4: warning: passing argument 2 of 'zend_get_object_classname' from incompatible pointer type [enabled by default]
/usr/include/php5/Zend/zend_API.h:326:14: note: expected 'char **' but argument is of type 'const char **'
/bin/bash /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/libtool --mode=compile cc  -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib  -DHAVE_CONFIG_H  -g -O2   -c /tmp/pear/temp/xdebug/xdebug_xml.c -o xdebug_xml.lo
libtool: compile:  cc -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib -DHAVE_CONFIG_H -g -O2 -c /tmp/pear/temp/xdebug/xdebug_xml.c  -fPIC -DPIC -o .libs/xdebug_xml.o
/bin/bash /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/libtool --mode=compile cc  -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib  -DHAVE_CONFIG_H  -g -O2   -c /tmp/pear/temp/xdebug/usefulstuff.c -o usefulstuff.lo
libtool: compile:  cc -I. -I/tmp/pear/temp/xdebug -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib -DHAVE_CONFIG_H -g -O2 -c /tmp/pear/temp/xdebug/usefulstuff.c  -fPIC -DPIC -o .libs/usefulstuff.o
/bin/bash /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/libtool --mode=link cc -DPHP_ATOM_INC -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/include -I/tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/main -I/tmp/pear/temp/xdebug -I/usr/include/php5 -I/usr/include/php5/main -I/usr/include/php5/TSRM -I/usr/include/php5/Zend -I/usr/include/php5/ext -I/usr/include/php5/ext/date/lib  -DHAVE_CONFIG_H  -g -O2   -o xdebug.la -export-dynamic -avoid-version -prefer-pic -module -rpath /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/modules  xdebug.lo xdebug_code_coverage.lo xdebug_com.lo xdebug_compat.lo xdebug_handler_dbgp.lo xdebug_handlers.lo xdebug_llist.lo xdebug_hash.lo xdebug_private.lo xdebug_profiler.lo xdebug_set.lo xdebug_stack.lo xdebug_str.lo xdebug_superglobals.lo xdebug_tracing.lo xdebug_var.lo xdebug_xml.lo usefulstuff.lo -lm
libtool: link: cc -shared  -fPIC -DPIC  .libs/xdebug.o .libs/xdebug_code_coverage.o .libs/xdebug_com.o .libs/xdebug_compat.o .libs/xdebug_handler_dbgp.o .libs/xdebug_handlers.o .libs/xdebug_llist.o .libs/xdebug_hash.o .libs/xdebug_private.o .libs/xdebug_profiler.o .libs/xdebug_set.o .libs/xdebug_stack.o .libs/xdebug_str.o .libs/xdebug_superglobals.o .libs/xdebug_tracing.o .libs/xdebug_var.o .libs/xdebug_xml.o .libs/usefulstuff.o   -lm  -O2   -Wl,-soname -Wl,xdebug.so -o .libs/xdebug.so
libtool: link: ( cd ".libs" && rm -f "xdebug.la" && ln -s "../xdebug.la" "xdebug.la" )
/bin/bash /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/libtool --mode=install cp ./xdebug.la /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/modules
libtool: install: cp ./.libs/xdebug.so /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/modules/xdebug.so
libtool: install: cp ./.libs/xdebug.lai /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/modules/xdebug.la
libtool: finish: PATH="/usr/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/vagrant_ruby/bin:/sbin" ldconfig -n /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/modules
----------------------------------------------------------------------
Libraries have been installed in:
   /tmp/pear/temp/pear-build-rootg8aWcA/xdebug-2.2.1/modules

If you ever happen to want to link against installed libraries
in a given directory, LIBDIR, you must either use libtool, and
specify the full pathname of the library, or use the `-LLIBDIR'
flag during linking and do at least one of the following:
   - add LIBDIR to the `LD_LIBRARY_PATH' environment variable
     during execution
   - add LIBDIR to the `LD_RUN_PATH' environment variable
     during linking
   - use the `-Wl,-rpath -Wl,LIBDIR' linker flag
   - have your system administrator add LIBDIR to `/etc/ld.so.conf'

See any operating system documentation about shared libraries for
more information, such as the ld(1) and ld.so(8) manual pages.
----------------------------------------------------------------------

Build complete.
Don't forget to run 'make test'.

running: make INSTALL_ROOT="/tmp/pear/temp/pear-build-rootg8aWcA/install-xdebug-2.2.1" install
Installing shared extensions:     /tmp/pear/temp/pear-build-rootg8aWcA/install-xdebug-2.2.1/usr/lib/php5/20090626/

  +----------------------------------------------------------------------+
  |                                                                      |
  |   INSTALLATION INSTRUCTIONS                                          |
  |   =========================                                          |
  |                                                                      |
  |   See http://xdebug.org/install.php#configure-php for instructions   |
  |   on how to enable Xdebug for PHP.                                   |
  |                                                                      |
  |   Documentation is available online as well:                         |
  |   - A list of all settings:  http://xdebug.org/docs-settings.php     |
  |   - A list of all functions: http://xdebug.org/docs-functions.php    |
  |   - Profiling instructions:  http://xdebug.org/docs-profiling2.php   |
  |   - Remote debugging:        http://xdebug.org/docs-debugger.php     |
  |                                                                      |
  |                                                                      |
  |   NOTE: Please disregard the message                                 |
  |       You should add "extension=xdebug.so" to php.ini                |
  |   that is emitted by the PECL installer. This does not work for      |
  |   Xdebug.                                                            |
  |                                                                      |
  +----------------------------------------------------------------------+


running: find "/tmp/pear/temp/pear-build-rootg8aWcA/install-xdebug-2.2.1" | xargs ls -dils
1182853   4 drwxr-xr-x 3 root root   4096 Oct 20 10:40 /tmp/pear/temp/pear-build-rootg8aWcA/install-xdebug-2.2.1
1182909   4 drwxr-xr-x 3 root root   4096 Oct 20 10:40 /tmp/pear/temp/pear-build-rootg8aWcA/install-xdebug-2.2.1/usr
1182910   4 drwxr-xr-x 3 root root   4096 Oct 20 10:40 /tmp/pear/temp/pear-build-rootg8aWcA/install-xdebug-2.2.1/usr/lib
1182911   4 drwxr-xr-x 3 root root   4096 Oct 20 10:40 /tmp/pear/temp/pear-build-rootg8aWcA/install-xdebug-2.2.1/usr/lib/php5
1182912   4 drwxr-xr-x 2 root root   4096 Oct 20 10:40 /tmp/pear/temp/pear-build-rootg8aWcA/install-xdebug-2.2.1/usr/lib/php5/20090626
1182908 796 -rwxr-xr-x 1 root root 813849 Oct 20 10:40 /tmp/pear/temp/pear-build-rootg8aWcA/install-xdebug-2.2.1/usr/lib/php5/20090626/xdebug.so

Build process completed successfully
Installing '/usr/lib/php5/20090626/xdebug.so'
Illegal instruction 
</pre>

na kraju imamo nekakvu grešku ?



phpab
=====


vagrant@precise64:~$ sudo pear channel-discover pear.netpirates.net
Channel "pear.netpirates.net" is already initialized
vagrant@precise64:~$ sudo pear channel-discover components.ez.no
Channel "components.ez.no" is already initialized
vagrant@precise64:~$ sudo pear install theseer/Autoload

downloading Autoload-1.9.1.tgz ...
Starting to download Autoload-1.9.1.tgz (13,177 bytes)
.....done: 13,177 bytes
downloading DirectoryScanner-1.1.0.tgz ...
Starting to download DirectoryScanner-1.1.0.tgz (3,644 bytes)
...done: 3,644 bytes
install ok: channel://pear.netpirates.net/DirectoryScanner-1.1.0
install ok: channel://pear.netpirates.net/Autoload-1.9.1
vagrant@precise64:~$ 
vagrant@precise64:~$ phpab
phpab 1.9.1 - Copyright (C) 2009 - 2012 by Arne Blankerts

Argument with name 'directory' is mandatory but was not submitted.

Usage: phpab [switches] <directory>

  -i, --include       File pattern to include (default: *.php)
  -e, --exclude       File pattern to exclude

  -b, --basedir       Basedir for filepaths
  -t, --template      Path to code template to use

  -o, --output        Output file for generated code (default: STDOUT)
  -p, --phar          Create a phar archive (requires -o )

  -c, --compat        Generate PHP 5.2 compatible code
  -s, --static        Generate a static require file

  -n, --nolower       Do not lowercase classnames for case insensitivity

  -q, --quiet         Quiet mode, do not output any processing errors or information

      --format        Dateformat string for timestamp
      --linebreak     Linebreak style (CR, CRLF or LF, default: LF)
      --indent        String used for indenting or number of spaces (default: 16 (compat 12) spaces)

      --tolerant      Ignore Class Redeclarations in the same file
      --once          Use require_once instead of require when creating a static require file

      --all           Include all files in given directory when creating a phar

      --trusting      Do not check mimetype of files prior to parsing (default)
      --paranoid      Do check mimetype of files prior to parsing

      --var name=foo  Assign value 'foo' to variable 'name' to be used in (custom) templates

      --lint          Run lint on generated code and exit
      --lint-php      PHP binary to use for linting (default: /usr/bin/php or c:\php\php.exe)

  -h, --help          Prints this usage information
  -v, --version       Prints the version and exits


