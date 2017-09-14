install
```
sudo apt-get update
sudo apt-get install nginx
```
apply after udpating files under nginx/conf.d
```
sudo nginx -t
sudo service nginx restart  // or nginx -s reload
```

options
```
-?, -h	Print help.
-v	Print version.
-V	Print NGINX version, compiler version and configure parameters.
-t	Don’t run, just test the configuration file. NGINX checks configuration for correct syntax and then try to open files referred in configuration.
-q	Suppress non-error messages during configuration testing.
-s signal	Send signal to a master process: stop, quit, reopen, reload. (version >= 0.7.53)
-p prefix	Set prefix path (default: /usr/local/nginx/). (version >= 0.7.53)
-c filename	Specify which configuration file NGINX should use instead of the default.
-g directives	Set global directives. (version >= 0.7.4)
-s signal   (signal: stop, quit, reload, reopen)
-c <PATH> execute config
```


Kill
```
nginx -s quit  // under same user that start nginx
ps -ax | grep nginx
```
