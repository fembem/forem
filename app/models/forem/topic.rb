module Forem
  class Topic < ActiveRecord::Base
    has_many :posts, :order => "created_at ASC"
    accepts_nested_attributes_for :posts
    belongs_to :user, :class_name => Forem::Engine.user_class.to_s

    before_save :set_post_user
    private
    def set_post_user
      self.posts.first.user = self.user
    end

  end
end
