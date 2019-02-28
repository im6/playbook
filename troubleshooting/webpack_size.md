# minimize webpack output bundle size

* put common chunk in CDN, react/react-addon, vue, angular, jquery;
* use unit package instead of whole suite, lodash vs lodash.merge;
* analyse the bundle segment
  * [webpack analyse](https://github.com/webpack/analyse)
  * [webpack-chart](http://alexkuz.github.io/webpack-chart/)
  * move dependency to externals
