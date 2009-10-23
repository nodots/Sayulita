class ArtifactBundlesController < ApplicationController
  # GET /artifact_bundles
  # GET /artifact_bundles.xml
  def index
    @artifact_bundles = ArtifactBundle.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @artifact_bundles }
    end
  end

  # GET /artifact_bundles/1
  # GET /artifact_bundles/1.xml
  def show
    @artifact_bundle = ArtifactBundle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @artifact_bundle }
    end
  end

  # GET /artifact_bundles/new
  # GET /artifact_bundles/new.xml
  def new
    @artifact_bundle = ArtifactBundle.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @artifact_bundle }
    end
  end

  # GET /artifact_bundles/1/edit
  def edit
    @artifact_bundle = ArtifactBundle.find(params[:id])
  end

  # POST /artifact_bundles
  # POST /artifact_bundles.xml
  def create
    @artifact_bundle = ArtifactBundle.new(params[:artifact_bundle])

    respond_to do |format|
      if @artifact_bundle.save
        flash[:notice] = 'ArtifactBundle was successfully created.'
        format.html { redirect_to(@artifact_bundle) }
        format.xml  { render :xml => @artifact_bundle, :status => :created, :location => @artifact_bundle }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @artifact_bundle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /artifact_bundles/1
  # PUT /artifact_bundles/1.xml
  def update
    @artifact_bundle = ArtifactBundle.find(params[:id])

    respond_to do |format|
      if @artifact_bundle.update_attributes(params[:artifact_bundle])
        flash[:notice] = 'ArtifactBundle was successfully updated.'
        format.html { redirect_to(@artifact_bundle) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @artifact_bundle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /artifact_bundles/1
  # DELETE /artifact_bundles/1.xml
  def destroy
    @artifact_bundle = ArtifactBundle.find(params[:id])
    @artifact_bundle.destroy

    respond_to do |format|
      format.html { redirect_to(artifact_bundles_url) }
      format.xml  { head :ok }
    end
  end
end
