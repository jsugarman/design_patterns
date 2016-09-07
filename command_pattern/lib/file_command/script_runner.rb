class ScriptRunner

  def run_file_command
    path = "#{app_root}/test/fixtures/testing.txt"
    copy = "#{app_root}/test/fixtures/testing_copy.txt"
    cmds = CompositeCommand.new
    cmds.add_command(CreateFile.new(path,'testing file create command'))
    cmds.add_command(CopyFile.new(path,copy))
    cmds.add_command(DeleteFile.new(path))
    cmds.add_command(DeleteFile.new(copy))
    cmds.execute

    puts "-----------------------------"
    puts cmds.reverse_description
    puts "-----------------------------"
    puts "unexecute first 2 steps above"
    puts "-----------------------------"
    cmds.unexecute(2)

    puts "----------------------------------------------------------------"
    puts cmds.reverse_description
    puts "----------------------------------------------------------------"
    puts "unexecute all remaining steps above in order"
    puts "----------------------------------------------------------------"
    cmds.unexecute
  end

end
