# frozen_string_literal: true

module RVAData
  YEAR = 23
  MONTH = 3
  DAY = 19
  REVISION = 2
  SUFFIX = 'a'
  VERSION = "#{YEAR}.#{MONTH < 10 ? "0#{MONTH}" : MONTH}#{DAY}#{SUFFIX}-#{REVISION}"
end
