class PostsController < ApplicationController
    before_action :authorized, only: [:persist]

    def create
        @post = Post.create(content: params[:content])
    end

    def like
        @post = Post.find_by(id: params[:id])
    end



end
