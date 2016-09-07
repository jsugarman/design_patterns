# load all pattern files
module Load
  def self.root_path
    "#{__FILE__}/../../../"
  end

  def self.all_patterns
    puts "Loading pattern examples..."
    Dir[File.expand_path("#{root_path}/*_pattern/**/*.rb")].each do |file|
      require file
    end

    puts "Loading libraries..."
    Dir[File.expand_path("#{root_path}/lib/**/*.rb")].each do |file|
      require file
    end
  end

end

Load.all_patterns
