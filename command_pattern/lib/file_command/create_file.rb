class CreateFile < Command

  def initialize(path, contents)
    super("create file: #{path}")
    @path = path
    @contents = contents
  end

  def execute
    f = File.open(@path,'w')
    f.write(@contents)
    f.close
  end

  def unexecute
    DeleteFile.new(@path).execute if @path
  end

end