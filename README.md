"Agile" What ?
=============

Agile je "cool" izraz u developerskom svijetu posljednjih godina.

Međutim, kao i svi "hype" izrazi često se agilno upotrebljava a da se i
ne razumije previše.

Malo **developera**, a još manje **projekata** koji u cjelini razumiju ovaj
koncept.

Ja, nažalost, pripadam većini. 

Naslućujem, na osnovu čitanja na tu temu, da je agilni pristup razvoju software-a dobar. 

Ali, kako to staviti u svakodnevnu praksu ? Kako to primjenjivati u realnom kontekstu ? Da li u
mojoj ultra-small-size firmi uopšte ima smisla razmatrati taj koncept ?

Sve su to pitanja na koja nemam odgovor.

Na ovom mjestu ću ta pitanja pokušati barem djelimično doći do odgovora.

Započeću sa uspostavom agilnog razvojnog okruženja.


Bilješke
--------

http://jenkins-ci.org

http://code.google.com/p/gerrit/

http://www.phpunit.de/manual/current/en/automating-tests.html

http://zombie.labnotes.org

http://jenkins-php.org

http://net.tutsplus.com/tutorials/php/the-newbies-guide-to-test-driven-development/

https://github.com/eriwen/javascript-stacktrace


https://wiki.jenkins-ci.org/display/JENKINS/xUnit+Plugin

http://www.mabishu.com/blog/2012/04/17/setting-up-jenkins-in-ubuntu-precise-12-04-for-php-projects/



vbox install ci server
----------------------

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



Postojeće stanje u bring.out
-----------------------------

Koje "agilne" prakse već postoje u bring.out ?

Coolective code ?

Komunikacija ?

Version control - da

Koji segmenti firme su pokriveni ?



