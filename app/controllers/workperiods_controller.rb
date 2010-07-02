class WorkperiodsController < ApplicationController
  # GET /workperiods
  # GET /workperiods.xml
  def index
    @workperiods = Workperiod.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @workperiods }
    end
  end

  # GET /workperiods/1
  # GET /workperiods/1.xml
  def show
    @workperiod = Workperiod.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @workperiod }
    end
  end

  # GET /workperiods/new
  # GET /workperiods/new.xml
  def new
    @workperiod = Workperiod.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @workperiod }
    end
  end

  # GET /workperiods/1/edit
  def edit
    @workperiod = Workperiod.find(params[:id])
  end

  # POST /workperiods
  # POST /workperiods.xml
  def create
    @workperiod = Workperiod.new(params[:workperiod])

    respond_to do |format|
      if @workperiod.save
        flash[:notice] = 'Workperiod was successfully created.'
        format.html { redirect_to(@workperiod) }
        format.xml  { render :xml => @workperiod, :status => :created, :location => @workperiod }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @workperiod.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /workperiods/1
  # PUT /workperiods/1.xml
  def update
    @workperiod = Workperiod.find(params[:id])

    respond_to do |format|
      if @workperiod.update_attributes(params[:workperiod])
        flash[:notice] = 'Workperiod was successfully updated.'
        format.html { redirect_to(@workperiod) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @workperiod.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /workperiods/1
  # DELETE /workperiods/1.xml
  def destroy
    @workperiod = Workperiod.find(params[:id])
    @workperiod.destroy

    respond_to do |format|
      format.html { redirect_to(workperiods_url) }
      format.xml  { head :ok }
    end
  end
end
