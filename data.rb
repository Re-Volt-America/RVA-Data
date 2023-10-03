# frozen_string_literal: true

module RVAData
  YEAR = 23
  MONTH = 10
  DAY = 1
  REVISION = 2
  SUFFIX = 'a'
  VERSION = "#{YEAR}.#{MONTH < 10 ? "0#{MONTH}" : MONTH}#{DAY < 10 ? "0#{DAY}" : DAY}#{SUFFIX}-#{REVISION}"
end
