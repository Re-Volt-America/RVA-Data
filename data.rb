# frozen_string_literal: true

module Data
  YEAR = 22
  MONTH = 2
  DAY = 21
  VERSION = "#{YEAR}.#{MONTH < 10 ? "0#{MONTH}" : MONTH}#{DAY}"
end
