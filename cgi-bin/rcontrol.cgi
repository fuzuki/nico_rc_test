#!/usr/bin/ruby
# -*- coding: utf-8 -*-

#移動命令をシリアルからArduinoに送るだけのCGI
require 'rubygems'
require 'serialport'
require 'cgi'
cgi = CGI.new

#

print "Content-type: text/html\n\n"

if cgi["move"].length > 1
  puts "something"
  exit
end
move = cgi["move"]
puts "move:" + move

port = "/dev/ttyUSB0"    #arduinoのポート番号
sp = SerialPort.new(port, 9600, 8, 1, SerialPort::NONE)

#パラメータをそのまま送信
sp.write move

sp.close

