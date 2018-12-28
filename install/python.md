```
$ sudo apt-get install python-pip python<VERSION>-dev build-essential
$ sudo pip install --upgrade pip 
$ sudo pip install --upgrade virtualenv
```

### Simple version
```
sudo apt-get install python-pip
pip install --upgrade pip
pip install virtualenv
virtualenv -p python3 <ENV_Name>
```

### Necessary: python`<VERSION`>-dev
```
For Python 2.x use:
   $ sudo apt-get install python-dev
For Python 2.7 use:
   $ sudo apt-get install libffi-dev
For Python 3.x use:
   $ sudo apt-get install python3-dev
For Python 3.4 use:
   $ sudo apt-get install python3.4-dev
For Python 3.5 use:
   $ sudo apt-get install python3.5-dev
For Python 3.6 use:
   $ sudo apt-get install python3.6-dev
```
### Optional:
libpq-dev: C application programmer's interface to PostgreSQL  
libxml2-dev: XML C parser and toolkit developed for the Gnome project  
libxslt1-dev:  an XML language for defining transformations of XML files from XML to some other arbitrary format, such as XML, HTML  
libldap2-dev: simple LDAP protocal  
libsasl2-dev: SASL is the Simple Authentication and Security Layer, a method for adding authentication support to connection-based protocols   
libffi-dev: portable, high level programming interface to various calling conventions  
