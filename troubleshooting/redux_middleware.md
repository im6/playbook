```js
const myMiddleWare = store => next => action => {
  // ===================
  // do some middle job
  // ===================
  return next(action);
};

const middlewares = [sagaMiddleware, myMiddleWare];

const enhancer = compose(
  applyMiddleware.apply(null, middlewares),
  window.devToolsExtension ? window.devToolsExtension() : f => f
);
```
