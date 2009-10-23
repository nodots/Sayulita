class BschoolAppsController < ApplicationController
  # GET /bschool_apps
  # GET /bschool_apps.xml
  def index
    @bschool_apps = BschoolApp.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bschool_apps }
    end
  end

  # GET /bschool_apps/1
  # GET /bschool_apps/1.xml
  def show
    @bschool_app = BschoolApp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bschool_app }
    end
  end

  # GET /bschool_apps/new
  # GET /bschool_apps/new.xml
  def new
    @bschool_app = BschoolApp.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bschool_app }
    end
  end

  # GET /bschool_apps/1/edit
  def edit
    @bschool_app = BschoolApp.find(params[:id])
  end

  # POST /bschool_apps
  # POST /bschool_apps.xml
  def create
    @bschool_app = BschoolApp.new(params[:bschool_app])

    respond_to do |format|
      if @bschool_app.save
        flash[:notice] = 'BschoolApp was successfully created.'
        format.html { redirect_to(@bschool_app) }
        format.xml  { render :xml => @bschool_app, :status => :created, :location => @bschool_app }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bschool_app.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bschool_apps/1
  # PUT /bschool_apps/1.xml
  def update
    @bschool_app = BschoolApp.find(params[:id])

    respond_to do |format|
      if @bschool_app.update_attributes(params[:bschool_app])
        flash[:notice] = 'BschoolApp was successfully updated.'
        format.html { redirect_to(@bschool_app) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bschool_app.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bschool_apps/1
  # DELETE /bschool_apps/1.xml
  def destroy
    @bschool_app = BschoolApp.find(params[:id])
    @bschool_app.destroy

    respond_to do |format|
      format.html { redirect_to(bschool_apps_url) }
      format.xml  { head :ok }
    end
  end
end
