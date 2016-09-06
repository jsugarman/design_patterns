# load all pattern files
module Load
  def self.root_path
    "#{__FILE__}/../../../"
  end

  def self.all_patterns

    # load any explicit initializer files - for handling order dependencies
    Dir[File.expand_path("#{root_path}/*_pattern/initializer.rb")].each do |file|
      require file
    end

    # load all other ruby file
    Dir[File.expand_path("#{root_path}/*_pattern/**/*.rb")].each do |file|
      require file
    end
  end
end

puts "Loading all pattern files"
Load.all_patterns