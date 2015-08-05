class Song
  # code goes here
    def title=(title)
    @title=title
  end

  def title
    @title
  end

  def artist=(artist)
    @artist=artist
  end

  def artist
  @artist
  end

  def serialize
    file_name=@title.downcase.tr!(" ","_")
    temp_file = Tempfile.new(["#{file_name}",".txt"],"tmp")     
    temp_file.write ("#{artist.name} - #{@title}")
    temp_file.rewind
    temp_file.read
    temp_file.close
  end

end
