class CopyFile < Command

  def initialize(source, target)
    super("copy file #{source} to #{target}")
    @source = source
    @target = target
  end

  def execute
    FileUtils.copy(@source, @target)
  end

  def unexecute
    DeleteFile.new(@target).execute if @target
  end
end