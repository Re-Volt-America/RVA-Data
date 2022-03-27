# frozen_string_literal: true

require 'json'
require 'csv'
require 'fileutils'

require_relative 'data'

task :default => %i[profile version]

task :profile do
  Dir.entries('models/cars').each do |f|
    next unless File.extname(f).eql?('.csv')

    car_class = f.split('.')[0]
    data = CSV.read("models/cars/#{f}")

    contents = [
      "#{car_class}:"
    ]
    puts "Writing class #{car_class} ..."

    data.drop(1).each do |l|
      slug = l[0].gsub(' ', '_').downcase

      car_line = [
        "\s\s#{slug}:",
        "\s\s\s\sname: #{l[0]}",
        "\s\s\s\sslug: #{slug}",
        "\s\s\s\sspeed: #{l[1]}",
        "\s\s\s\sacc: #{l[2]}",
        "\s\s\s\sweight: #{l[3]}",
        "\s\s\s\smultiplier: #{l[4]}"
      ]

      puts "Writing car #{car_line} ..."
      contents.append(car_line)
    end

    Dir.mkdir('yml') unless File.exist?('yml')
    File.open("yml/#{car_class}.yml", 'w+') do |yml|
      contents.each { |l| yml.puts(l) }
    end

    Dir.mkdir('yaml') unless File.exist?('yaml')
    File.open("yaml/#{car_class}.yaml", 'w+') do |yaml|
      contents.each { |l| yaml.puts(l) }
    end
  end
end

task :version => [:profile] do
  contents = [
    '{',
    "\t\"version\": \"#{RVAData::VERSION}\"",
    '}'
  ]

  File.open('rva_data.json', 'w+') do |f|
    contents.each { |l| f.puts(l) }
  end
end
