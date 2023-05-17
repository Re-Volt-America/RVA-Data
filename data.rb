# frozen_string_literal: true

module RVAData
  YEAR = 23
  MONTH = 5
  DAY = 16
  REVISION = 1
  SUFFIX = 'a'
  VERSION = "#{YEAR}.#{MONTH < 10 ? "0#{MONTH}" : MONTH}#{DAY}#{SUFFIX}-#{REVISION}"
end
