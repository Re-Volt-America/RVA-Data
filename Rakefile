# frozen_string_literal: true

require 'json'
require 'csv'
require 'fileutils'

require_relative 'data'

task :default => %i[profile version]

task :profile => %i[profile_cars profile_tracks]

task :profile_cars do
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

      car_lines = [
        "\s\s#{slug}:",
        "\s\s\s\sname: #{l[0]}",
        "\s\s\s\sslug: #{slug}",
        "\s\s\s\sspeed: #{l[1]}",
        "\s\s\s\sacc: #{l[2]}",
        "\s\s\s\sweight: #{l[3]}",
        "\s\s\s\smultiplier: #{l[4]}",
        "\s\s\s\sfolder_name: #{l[5]}",
        "\s\s\s\sauthor: #{l[6]}",
        "\s\s\s\sstock: #{l[7].downcase}"
      ]

      car_lines.each do |line|
        puts(line)
      end

      contents.append(car_lines)
    end

    Dir.mkdir('yml') unless File.exist?('yml')
    File.open("yml/#{car_class}.yml", 'w+') do |yml|
      contents.each { |l| yml.puts(l) }
    end
  end
end

task :profile_tracks do
  Dir.entries('models/tracks').each do |f|
    next unless File.extname(f).eql?('.csv')

    contents = []

    puts('Writing tracks ...')

    data = CSV.read("models/tracks/#{f}")
    data.drop(1).each do |l|
      slug = l[0].gsub(' ', '_').downcase

      track_lines = [
        "\s\s#{slug}:",
        "\s\s\s\sname: \"#{l[0]}\"",
        "\s\s\s\sslug: \"#{slug}\"",
        "\s\s\s\sshort_name: \"#{l[1]}\"",
        "\s\s\s\sdifficulty: #{l[2]}",
        "\s\s\s\slength: #{l[3]}",
        "\s\s\s\sfolder_name: #{l[4]}",
        "\s\s\s\sauthor: #{l[5]}",
        "\s\s\s\sstock: #{l[6].downcase}",
        "\s\s\s\slego: #{l[7].downcase}",
        "\s\s\s\saverage_lap_time: #{l[8].downcase}"
      ]

      track_lines.each do |line|
        puts(line.to_s)
      end

      contents.append(track_lines)
    end

    Dir.mkdir('yml') unless File.exist?('yml')
    File.open("yml/#{File.basename(f, '.csv')}.yml", 'w+') do |yml|
      contents.each { |l| yml.puts(l) }
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
