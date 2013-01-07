# encoding: utf-8

require 'rubygems'
require 'csv'

class ReadDump
filename = 'celebrity2.csv'
CSV.foreach(filename, :headers => false, :encoding => 'windows-1251:utf-8') do |row|
    begin
    DataDump.create!(dump: row)
  rescue
  end
 end
 end