wget=require '../index.js'
assert=require 'assert'

it "should be able to get url",(done)->
  new Promise (resolve)->
    wget.wget('https://www.google.com/').then (result)->
      assert.ok result
      resolve()
  done()

it "should be able to get url sync",(done)->
  result=wget.wgetSync('https://www.google.com/')
  assert.ok result
  done()