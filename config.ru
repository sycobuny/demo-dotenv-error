#!/usr/bin/env rackup

ENV['DEMO'] ||= 'not read'

require 'bundler'
ENV['RACK_ENV'] ||= 'development'
Bundler.setup   :default, :development
Bundler.require :default, :development

$:.unshift File.expand_path('.', File.dirname(__FILE__))
require 'app'
run DemoApp
