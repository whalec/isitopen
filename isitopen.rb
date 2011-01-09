require 'rubygems'
require 'sinatra'
gem 'activesupport', "=2.3.5"
require 'active_support'

Time.zone = "Sydney"

OPENING_DATE = Time.zone.parse("01/12/2011 07:00:00")

get "/" do
	if Time.zone.now >= OPENING_DATE
		@result = "YES"
	else
		@result = "NO"
	end
	erb :index
end
