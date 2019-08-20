[root@puppet:manifests]# pwd
/etc/puppetlabs/code/environments/production/manifests/site.pp
class { 'java' :
  package => 'java-1.8.0-openjdk-devel',
}
class { 'tomcat': }
tomcat::instance { 'test':
  source_url => 'http://apache.claz.org/tomcat/tomcat-8/v8.5.43/bin/apache-tomcat-8.5.43.tar.gz'
}->
tomcat::service { 'default': }