class PostsController < ApplicationController
    before_action :authorized, only: [:persist]

    def create
        @post = Post.create(content: params[:content])
        # byebug
        Userpost.create(user_id: @user.id, post_id: @post.id)
    end

    def like
        @post = Post.find_by(id: params[:id])
    end



end
