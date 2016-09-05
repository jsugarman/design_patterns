# load all pattern files
module Loader
  
    def self.root_path
      "#{__FILE__}/../../../"
    end

    def self.test
      Dir[File.expand_path("#{root_path}/*_pattern/**/*.rb")].each do | file|
        puts "pattern file: #{file}\n"
      end
    end

    def self.all_patterns
      Dir[File.expand_path("#{root_path}/*_pattern/initializer.rb")].each do |file|
        require file
      end

      Dir[File.expand_path("#{root_path}/*_pattern/**/*.rb")].each do |file|
        require file
      end
    end

end

Loader.all_patterns