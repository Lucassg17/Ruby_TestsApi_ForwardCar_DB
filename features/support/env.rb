require 'cucumber'
require 'httparty'
require 'rspec'
require 'pry'
require 'pg'

require_relative 'page_helper'

World(PageHelpers) #torna global todas as classes instanciadas no PageHelpers
