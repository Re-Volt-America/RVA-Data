# frozen_string_literal: true

module RVAData
  YEAR = 22
  MONTH = 6
  DAY = 21
  REVISION = 1
  SUFFIX = 'a'
  VERSION = "#{YEAR}.#{MONTH < 10 ? "0#{MONTH}" : MONTH}#{DAY}#{SUFFIX}-#{REVISION}"
end
