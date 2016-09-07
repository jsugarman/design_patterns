class DeleteFile < Command

  def initialize(path)
    super("delete file #{path}")
    @path = path
  end

  def execute
    if File.exists?(@path)
      @contents = File.read(@path)
    end
    File.delete(@path)
  end

  def unexecute
    CreateFile.new(@path, @contents).execute
  end

end