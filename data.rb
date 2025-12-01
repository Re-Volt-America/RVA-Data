# frozen_string_literal: true

module RVAData
  YEAR = 25
  MONTH = 8
  DAY = 25
  REVISION = 5
  SUFFIX = 'a'
  VERSION = "#{YEAR}.#{MONTH < 10 ? "0#{MONTH}" : MONTH}#{DAY < 10 ? "0#{DAY}" : DAY}#{SUFFIX}-#{REVISION}"
end
