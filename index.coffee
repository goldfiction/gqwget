needle=require "needle"

wget=(url)->
  return new Promise (resolve)->
    needle.get url,(error, response)->
      if (!error && response.statusCode == 200)
        resolve response.body
      else
        throw new Error(error.message)

wgetSync=(url)->
  result=await wget url
  return result

exports.wget=wget
exports.wgetSync=wgetSync