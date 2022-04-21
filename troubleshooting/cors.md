# CORS in OSS

Colorpk use google analytic to track error. In order to show complete error message, I need to set CORS attribute in some places.
[tutorial](https://blog.sentry.io/2016/05/17/what-is-script-error#2-add-a-cross-origin-http-header)

## code changes

in html.jsx

```jsx
<script
  src={`${script}?${version}`}
  type="text/javascript"
  crossorigin="anonymous"
/>
```

in render.jsx

```js
res.header("Access-Control-Allow-Origin", "*");
```

in OSS
权限管理 － 跨域设置 － 创建规则 － add `https://react.colorpk.com` to source and select `GET` method.

## scenario

- XMLHttpRequest or Fetch APIs
- web font
- media resource
- css shapes

## mechanism

- The Cross-Origin Resource Sharing standard works by adding new HTTP headers that let servers describe which origins are permitted to read that information from a web browser.
- methods other than HEAD, GET and POST, "preflight" the request, use OPTION to solicit supported method

## header need to set

- Accept
- Accept-Language
- Content-Language
- Content-Type (please note the additional requirements below)
- Range
- Access-Control-Allow-Origin: \*
- Access-Control-Allow-Methods
- Access-Control-Allow-Headers
