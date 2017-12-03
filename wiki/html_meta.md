[reference](http://www.hongkiat.com/blog/meta-tag-hidden-features/)
[stackoverflow survey result in 2017](https://www.sitepoint.com/key-takeaways-stack-overflow-2017-developer-survey/)
1. Controlling Browser Cache
```html
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="expires" content="Fri, 18 Jul 2014 1:00:00 GMT" />
```
2. Setting Cookies
```html
<meta http-equiv="Set-Cookie" content="name=data; path=path; expires=Day, DD-MMM-YY HH:MM:SS ZONE">
<meta http-equiv="Set-Cookie" content="name=data; path=path; expires=Thursday, 01-Jan-2015 00:00:00 GMT">
```
3. Refreshing Web Pages
```html
<meta http-equiv="refresh" content="5">
```
4. Redirecting
```html
<meta http-equiv="refresh" content="5; url=http://example.com/">
<meta http-equiv="refresh" content="0; url=http://example.com/">
```
5. Page Transition
```html
<meta http-equiv="page-enter" content="revealtrans(duration=seconds,transition=num)" />
<meta http-equiv="page-exit" content="revealtrans(duration=seconds,transition=num)" />
<meta http-equiv="page-enter" content="blendTrans(duration=sec)" />
```
