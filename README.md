reef
====

[![Gem Version](https://badge.fury.io/rb/reef.png)](http://rubygems.org/gems/reef)
[![Build Status](https://secure.travis-ci.org/penultimatix/reef.png?branch=master)](http://travis-ci.org/penultimatix/reef)


Celluloid's [Reel](http://github.com/celluloid/reel), expanded into a framework foundation module.
This experimental module ought to both extend Reel, and your own framework or application; it is intended to form a base
for diverse addons to Reel, both over and under the request: working with Requests and/or the Responses within Reel.

Comparable functionality would be Rack's middleware for its behavior toward Reel as an extendible handler,
and Sinatra / Octarine / Padrino for the HTTP DSL aspect, without those libraries,
and using the ultra-fast Reel server.

**Intended functionalities to start with:**

* Code Reloading in development environments
* Session handling
* HTTP DSL, with:
  * Multiple Routes per end-point
  * Segmenting base routes into multiple handler classes
  ( i.e. /path/* goes to special handler where /path/endpoint is handled as "/endpoint" )
* GZIP compression of public/ and dynamically created responses from server
* public/ handling
* support something like --daemonize, despite possible limitations ( if platform supports )
* rolling restarts and code reloading in production environments
* wrap WebSockets within endpoints without requiring different port or Reel instance
