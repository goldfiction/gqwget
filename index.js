// Generated by CoffeeScript 2.0.0
(function() {
  var needle, wget, wgetSync;

  needle = require("needle");

  wget = function(url) {
    return new Promise(function(resolve, reject) {
      return needle.get(url, function(error, response) {
        if (!error && response.statusCode === 200) {
          return resolve(response.body);
        } else {
          return reject(error.message);
        }
      });
    });
  };

  wgetSync = async function(url) {
    return (await wget(url));
  };

  exports.wget = wget;

  exports.wgetSync = wgetSync;

}).call(this);

//# sourceMappingURL=index.js.map
