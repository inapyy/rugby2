# coding: utf-8

class SiaikekkasController < ApplicationController
  # GET /siaikekkas
  # GET /siaikekkas.xml
  def index
    @siaikekkas = Siaikekka.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @siaikekkas }
    end
  end

  # GET /siaikekkas/1
  # GET /siaikekkas/1.xml
  def show
    @siaikekka = Siaikekka.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @siaikekka }
    end
  end

  # GET /siaikekkas/new
  # GET /siaikekkas/new.xml
  def new
    @siaikekka = Siaikekka.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @siaikekka }
    end
  end

  # GET /siaikekkas/1/edit
  def edit
    @siaikekka = Siaikekka.find(params[:id])
  end

  # POST /siaikekkas
  # POST /siaikekkas.xml
  def create
    @siaikekka = Siaikekka.new(params[:siaikekka])

    respond_to do |format|
      if @siaikekka.save
        format.html { redirect_to(@siaikekka, :notice => 'Siaikekka was successfully created.') }
        format.xml  { render :xml => @siaikekka, :status => :created, :location => @siaikekka }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @siaikekka.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /siaikekkas/1
  # PUT /siaikekkas/1.xml
  def update
    @siaikekka = Siaikekka.find(params[:id])

    respond_to do |format|
      if @siaikekka.update_attributes(params[:siaikekka])
        format.html { redirect_to(@siaikekka, :notice => 'Siaikekka was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @siaikekka.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /siaikekkas/1
  # DELETE /siaikekkas/1.xml
  def destroy
    @siaikekka = Siaikekka.find(params[:id])
    @siaikekka.destroy

    respond_to do |format|
      format.html { redirect_to(siaikekkas_url) }
      format.xml  { head :ok }
    end
  end
end
