#!/usr/bin/env ruby
# frozen_string_literal: true

EMPTY_NAMEDAY_REGEXP = /\p{Pd}/.freeze
NAMEDAY_SEPARATOR_REGEXP = /\p{Space}/.freeze
COLUMN_MAP = { day: 'Datums', nameday: 'Vārdadienas' }.freeze
DATE_FORMAT = '%d.%m'

require 'csv'
require 'json'

output = []
csv_table = ::CSV.table(ENV['VVC_CSV_FILE_PATH'], col_sep: ';', header_converters: nil, encoding: 'BOM|UTF-8')

csv_table.each do |row|
  nameday = row[COLUMN_MAP[:nameday]]

  date_elements = ::Date._strptime(row[COLUMN_MAP[:day]], DATE_FORMAT)

  nameday.split(NAMEDAY_SEPARATOR_REGEXP).each do |name|
    next if nameday.match?(EMPTY_NAMEDAY_REGEXP) || nameday.empty?

    output << {
      month: date_elements[:mon],
      day: date_elements[:mday],
      name: name.strip
    }
  end
end

puts ::JSON.dump(output)
