![REAF](https://github.com/penultimatix/reaf/raw/master/logo-028.2Kj2.png)
====

[![Gem Version](https://badge.fury.io/rb/reef.png)](http://rubygems.org/gems/reef)
[![Build Status](https://secure.travis-ci.org/penultimatix/reef.png?branch=master)](http://travis-ci.org/penultimatix/reef)

**Realtime Experience Asynchronous Framework**

Celluloid's **[Reel](http://github.com/celluloid/reel)**, expanded into a framework foundation module.

This experimental module ought to both extend Reel, and your own framework or application. It is intended to be a base
for diverse addons to Reel, both over and under the HTTP Server: working with Requests and/or the Responses within Reel.
Out-of-the-box it covers HTTP+S and WS+S (Web Sockets) natively, using Celluloid's amazing **[Celluloid::IO](http://github.com/celluloid/celluloid-io)** with non-blocking IO. But **REAF** is not only an infrastructure for "the web" though it is most commonly used for that. It masters and opens up realtime interactions in general, regardless of protocol and whether used as server, client, or both.

Comparable functionality would be Rack's middleware convention, for making Reel as an extendible handler; also Sinatra / Octarine / Padrino for the HTTP DSL aspect, making development extremly simple, without those libraries; and portage systems in general, offering modular components easily added and removed.

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
