class UsersController < ApplicationController
  
  before_filter :ensure_correct_user, :except => [:new, :create]

   def ensure_correct_user
     if session[:id] != params[:id].to_i
       redirect_to root_url #todo , :notice => "You must be a User"
     end
   end
  
  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    @zip = User.find(params[:id]).zipcode
    
    s = Net::HTTP.get_response(URI.parse("http://api.votesmart.org/Candidates.getByZip?key=80ed23c61d678115ead4c4c5f2a3c055&zip5=#{@zip}")).body
    json = Hash.from_xml(s).to_json
    @candidatelist = JSON.parse(json)
    @candidatelist = @candidatelist["candidateList"]["candidate"]
    
    e = Net::HTTP.get_response(URI.parse("http://api.votesmart.org/Election.getElectionByZip?key=80ed23c61d678115ead4c4c5f2a3c055&zip5=#{@zip}")).body
    json = Hash.from_xml(e).to_json
    @elections = JSON.parse(json)
    @elections = @elections["elections"]["election"]
  
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        session[:id] = @user.id
        format.html { redirect_to user_url(@user.id), notice: "Welcome to MyBallot, #{@user.first_name}" }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end
