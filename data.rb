# frozen_string_literal: true

module RVAData
  YEAR = 26
  MONTH = 3
  DAY = 10
  REVISION = 3
  SUFFIX = 'a'
  VERSION = "#{YEAR}.#{MONTH < 10 ? "0#{MONTH}" : MONTH}#{DAY < 10 ? "0#{DAY}" : DAY}#{SUFFIX}-#{REVISION}"
end
