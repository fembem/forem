module Forem
  class TopicsController < ApplicationController

    before_filter :authenticate_forem_user!, :only => [:new, :create]

    def index
      @topics = Forem::Topic.all
    end

    def new
      @topic = Forem::Topic.new
      @topic.posts.build
    end

    def create
      @topic = Forem::Topic.create(params[:topic])
      flash[:notice] = "Topic has been created!"
      redirect_to @topic
    end

    def show
      @topic = Forem::Topic.find(params[:id])
    end

    private
    def authenticate_forem_user!
      if !current_user
        flash[:notice] = "You must be authenticated before you can do that."
        redirect_to main_app.sign_in_url
      end
    end

  end
end
