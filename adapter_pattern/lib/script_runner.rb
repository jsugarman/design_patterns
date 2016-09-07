class ScriptRunner

  def tmp_dir
    "#{app_root}/tmp"
  end

  def run_adaptor_pattern
    key = 'xyzabc'
    encryptor = Encryptor.new(key)

    # create file input
    plain_text_file = "#{tmp_dir}/unencrypted_input.txt"
    reader = File.open(plain_text_file,'w')
    reader.write 'my test string for encryption'
    reader.close

    # create encrypted version of plain text
    reader = File.open(plain_text_file)
    writer = File.open("#{tmp_dir}/encrypted_output.txt",'w')
    encryptor.encrypt(reader, writer)

    # unencrypt back to plain text
    reader = File.open("#{tmp_dir}/encrypted_output.txt")
    writer = File.open("#{tmp_dir}/unencrypted_output.txt",'w')
    encryptor.encrypt(reader,writer)

    # now use the adapter object
    file1 = "#{tmp_dir}/encrypted_output_from_string.txt"
    file2 = "#{tmp_dir}/unencrypted_output_from_string.txt"
    string_as_reader = StringIOAdapter.new('the end of the world is nigh')
    writer = File.open(file1,'w')
    encryptor.encrypt(string_as_reader, writer)

    # unencrypt
    reader = File.open(file1)
    writer = File.open(file2,'w')
    encryptor.encrypt(reader, writer)

  end

end