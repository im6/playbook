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
res.header('Access-Control-Allow-Origin', '*');
```

in OSS
权限管理 － 跨域设置 － 创建规则 － add `https://react.colorpk.com` to source and select `GET` method.