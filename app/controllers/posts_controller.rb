class PostsController < ApplicationController
    before_action :authorized


    def create
        
        @post = Post.create(content: params[:tweet], likes: 0)
        
        Userpost.create(user_id: @user.id, post_id: @post.id)

        render json: {post: @post}
    end

    def allPosts
        @userposts = @user.posts
        # byebug
        render json: {allPosts: @userposts}
    end

    def like
        @post = Post.find_by(id: params[:id])
    end

    



end
