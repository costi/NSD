class ClickToTalksController < ApplicationController
  before_filter :authenticate, :except => [:new, :create]
  protect_from_forgery :except => :create # I use page caching and that breaks it. Also I don't need to worry about forgeries here. 

  # GET /click_to_talks
  # GET /click_to_talks.xml
  def index
    @click_to_talks = ClickToTalk.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @click_to_talks }
    end
  end

  # GET /click_to_talks/1
  # GET /click_to_talks/1.xml
  def show
    @click_to_talk = ClickToTalk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @click_to_talk }
    end
  end

  # GET /click_to_talks/new
  # GET /click_to_talks/new.xml
  def new
    @click_to_talk = ClickToTalk.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @click_to_talk }
    end
  end

  # GET /click_to_talks/1/edit
  def edit
    @click_to_talk = ClickToTalk.find(params[:id])
  end

  # POST /click_to_talks
  # POST /click_to_talks.xml
  def create
    @click_to_talk = ClickToTalk.new(params[:click_to_talk])
    @click_to_talk.referer = request.env['HTTP_REFERER']
    @click_to_talk.ip_address = request.env['REMOTE_ADDR'] 
    @click_to_talk.user_agent = request.env['HTTP_USER_AGENT']
    respond_to do |format|
      if @click_to_talk.save        
        format.js
        format.html { flash[:notice] = 'Your request for Click To Talk was successfully created.' }
        format.xml  { render :xml => @click_to_talk, :status => :created, :location => @click_to_talk }
      else
        format.js { render 'create_error'}
        format.html { render :action => "new" }
        format.xml  { render :xml => @click_to_talk.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /click_to_talks/1
  # PUT /click_to_talks/1.xml
  def update
    @click_to_talk = ClickToTalk.find(params[:id])

    respond_to do |format|
      if @click_to_talk.update_attributes(params[:click_to_talk])
        flash[:notice] = 'ClickToTalk was successfully updated.'
        format.html { redirect_to(@click_to_talk) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @click_to_talk.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /click_to_talks/1
  # DELETE /click_to_talks/1.xml
  def destroy
    @click_to_talk = ClickToTalk.find(params[:id])
    @click_to_talk.destroy

    respond_to do |format|
      format.html { redirect_to(click_to_talks_url) }
      format.xml  { head :ok }
    end
  end
end
