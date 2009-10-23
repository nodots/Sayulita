class InstitutionPeopleController < ApplicationController
  # GET /institution_people
  # GET /institution_people.xml
  def index
    @institution_people = InstitutionPerson.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @institution_people }
    end
  end

  # GET /institution_people/1
  # GET /institution_people/1.xml
  def show
    @institution_person = InstitutionPerson.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @institution_person }
    end
  end

  # GET /institution_people/new
  # GET /institution_people/new.xml
  def new
    @institution_person = InstitutionPerson.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @institution_person }
    end
  end

  # GET /institution_people/1/edit
  def edit
    @institution_person = InstitutionPerson.find(params[:id])
  end

  # POST /institution_people
  # POST /institution_people.xml
  def create
    @institution_person = InstitutionPerson.new(params[:institution_person])

    respond_to do |format|
      if @institution_person.save
        flash[:notice] = 'InstitutionPerson was successfully created.'
        format.html { redirect_to(@institution_person) }
        format.xml  { render :xml => @institution_person, :status => :created, :location => @institution_person }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @institution_person.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /institution_people/1
  # PUT /institution_people/1.xml
  def update
    @institution_person = InstitutionPerson.find(params[:id])

    respond_to do |format|
      if @institution_person.update_attributes(params[:institution_person])
        flash[:notice] = 'InstitutionPerson was successfully updated.'
        format.html { redirect_to(@institution_person) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @institution_person.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /institution_people/1
  # DELETE /institution_people/1.xml
  def destroy
    @institution_person = InstitutionPerson.find(params[:id])
    @institution_person.destroy

    respond_to do |format|
      format.html { redirect_to(institution_people_url) }
      format.xml  { head :ok }
    end
  end
end
