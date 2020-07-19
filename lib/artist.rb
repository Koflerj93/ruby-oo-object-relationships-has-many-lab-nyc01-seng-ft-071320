class Artist
  
  attr_accessor :name
 
  def initialize(name)
    @name = name
  end 
  
  def songs
    Song.all.select do |song|
      song.artist = self
    end 
  end 
    
    def add_song(song)
      song.artist = self
    end 
    
    def add_post_by_title(title) 
      post = Post.new(title)
      post.author = self
    end 
    
    def self.post_count
      Post.all.count
    end 

end
