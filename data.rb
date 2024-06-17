# frozen_string_literal: true

module RVAData
  YEAR = 24
  MONTH = 5
  DAY = 1
  REVISION = 7
  SUFFIX = 'a'
  VERSION = "#{YEAR}.#{MONTH < 10 ? "0#{MONTH}" : MONTH}#{DAY < 10 ? "0#{DAY}" : DAY}#{SUFFIX}-#{REVISION}"
end
