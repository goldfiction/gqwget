needle=require "needle"

wget=(url)->
  return new Promise (resolve,reject)->
    needle.get url,(error, response)->
      if (!error && response.statusCode == 200)
        resolve response.body
      else
        reject error.message

wgetSync=(url)->
  return await wget url

exports.wget=wget
exports.wgetSync=wgetSync