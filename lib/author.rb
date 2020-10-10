

class Author

    def self.post_count
        Post.all.count
    end

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select do |post| #post object
            post.author == self
        end
    end

    def add_post(post) #post instance
        post.author = self
    end

    def add_post_by_title(post_title) #post.title
        self.add_post(Post.new(post_title)) 
    end



end