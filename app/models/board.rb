class Board < ApplicationRecord
  has_many :boards
  has_many :posts

  def post_count
    posts = Post.where(board_id: this.id)
    puts posts
  end
end
