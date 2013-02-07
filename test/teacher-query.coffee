async     = require 'async'
fs        = require 'fs'
assert    = require 'assert'
_         = require 'underscore'

describe 'query', ->

  clever = null
  before ->
    clever = require "#{__dirname}/../index"
    clever.api_key = 'DEMO_KEY'
    clever.url_base = 'https://api.getclever.com'

  it 'loads credentials', (done) ->

    clever.Teacher.Credentials.load "5099af05ff9fe8140f00006c", (err, credentials) ->
      assert.equal "Ward.Dietrich@mailinator.com", credentials.data.username
      assert.equal "0172", credentials.data.password
      done()

