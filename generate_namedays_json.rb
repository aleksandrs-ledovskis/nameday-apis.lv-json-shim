#!/usr/bin/env ruby
# frozen_string_literal: true

require "nameday_vvc_pdf_extractor"
require "psych"

extractor = Nameday::VvcPdfExtractor.new
extractor.read_pdf(ENV["VVC_PDF_FILE_PATH"])
nameday_hash = extractor.extract

output = []

nameday_hash.each do |month, month_value|
  month_value.each do |day, day_value|
    next unless day_value

    day_value.each do |name|
      output << {
        month: month,
        day: day,
        name: name
      }
    end
  end
end

puts Psych.to_json(output)
