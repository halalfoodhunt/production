module Commontator
  class CommentsController < Commontator::ApplicationController
    before_filter :set_thread, :only => [:new, :create]
    before_filter :set_comment_and_thread, :except => [:new, :create]

    # GET /threads/1/comments/new
    def new
      @comment = Comment.new
      @comment.thread = @thread
      @comment.creator = @friend
      security_transgression_unless @comment.can_be_created_by?(@friend)

      @per_page = params[:per_page] || @thread.config.comments_per_page

      respond_to do |format|
        format.html { redirect_to @thread }
        format.js
      end
     
    end

    # POST /threads/1/comments
    def create
      @comment = Comment.new
      @comment.thread = @thread
      @comment.creator = @friend
      @comment.body = params[:comment].nil? ? nil : params[:comment][:body]
      security_transgression_unless @comment.can_be_created_by?(@friend)
      subscribe_mentioned if Commontator.mentions_enabled
      
      respond_to do |format|
        if  !params[:cancel].nil?
          format.html { redirect_to @thread }
          format.js { render :cancel }
        elsif @comment.save
          sub = @thread.config.thread_subscription.to_sym
          @thread.subscribe(@friend) if sub == :a || sub == :b
          Subscription.comment_created(@comment)

          @per_page = params[:per_page] || @thread.config.comments_per_page

          format.html { redirect_to @thread }
          format.js
        else
          format.html { redirect_to @thread }
          format.js { render :new }
        end
      end
    end

    # GET /comments/1/edit
    def edit
      security_transgression_unless @comment.can_be_edited_by?(@friend)

      respond_to do |format|
        format.html { redirect_to @thread }
        format.js
      end
    end

    # PUT /comments/1
    def update
      security_transgression_unless @comment.can_be_edited_by?(@friend)
      @comment.body = params[:comment].nil? ? nil : params[:comment][:body]
      @comment.editor = @friend
      subscribe_mentioned if Commontator.mentions_enabled

      respond_to do |format|
        if !params[:cancel].nil?
          format.html { redirect_to @thread }
          format.js { render :cancel }
        elsif @comment.save
          format.html { redirect_to @thread }
          format.js
        else
          format.html { redirect_to @thread }
          format.js { render :edit }
        end
      end
    end

    # PUT /comments/1/delete
    def delete
      security_transgression_unless @comment.can_be_deleted_by?(@friend)

      @comment.errors.add(:base, t('commontator.comment.errors.already_deleted')) \
        unless @comment.delete_by(@friend)

      respond_to do |format|
        format.html { redirect_to @thread }
        format.js { render :delete }
      end
    end
    
    # PUT /comments/1/undelete
    def undelete
      security_transgression_unless @comment.can_be_deleted_by?(@friend)

      @comment.errors.add(:base, t('commontator.comment.errors.not_deleted')) \
        unless @comment.undelete_by(@friend)

      respond_to do |format|
        format.html { redirect_to @thread }
        format.js { render :delete }
      end
    end
    
    # PUT /comments/1/upvote
    def upvote
      security_transgression_unless @comment.can_be_voted_on_by?(@friend)
      
      @comment.upvote_from @friend

      respond_to do |format|
        format.html { redirect_to @thread }
        format.js { render :vote }
      end
    end
    
    # PUT /comments/1/downvote
    def downvote
      security_transgression_unless @comment.can_be_voted_on_by?(@friend) &&\
        @comment.thread.config.comment_voting.to_sym == :ld
      
      @comment.downvote_from @friend

      respond_to do |format|
        format.html { redirect_to @thread }
        format.js { render :vote }
      end
    end
    
    # PUT /comments/1/unvote
    def unvote
      security_transgression_unless @comment.can_be_voted_on_by?(@friend)
      
      @comment.unvote :voter => @friend

      respond_to do |format|
        format.html { redirect_to @thread }
        format.js { render :vote }
      end
    end
    
    protected
    
    def set_comment_and_thread
      @comment = Comment.find(params[:id])
      @thread = @comment.thread
      commontator_set_new_comment(@thread, @friend)
    end

    def subscribe_mentioned
      Commontator.commontator_mentions(@friend, '').where(id: params[:mentioned_ids]).each do |friend|
        @thread.subscribe(friend)
      end
    end
  end
end
