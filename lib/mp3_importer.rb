


class MP3Importer

  attr_accessor :path, :files

  def initialize(file_path)
    @path = file_path
  end

  def files
    count = Dir.entries(self.path).length
    hold = Dir.entries(self.path).slice(2, count)
  end

  def import
    self.files.each do |file_name|
      h = Song.new_by_filename(file_name)
      # binding.pry
    end
    # binding.pry
  end
end
