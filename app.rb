#!/usr/bin/env ruby

require 'sinatra'
require_relative 'num_to_words'

get '/' do
  erb :index
end

