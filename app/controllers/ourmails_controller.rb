class OurmailsController < ApplicationController
  before_action :set_ourmail, only: [:show, :edit, :update, :destroy]

  # GET /ourmails
  # GET /ourmails.json
  def index
    @ourmails = Mail.all
  end

  # GET /ourmails/1
  # GET /ourmails/1.json
  def show
  end

  # GET /ourmails/new
  def new
    @ourmail = Mail.new
  end

  # Thank you for signing up page
  def thankyou
  end

  # GET /ourmails/1/edit
  def edit
  end

  # POST /ourmails
  # POST /ourmails.json
  def create
    @ourmail = Ourmail.new(ourmail_params)

    respond_to do |format|
      if @ourmail.save
        format.html { render action: 'thankyou'}
	#redirect_to @ourmail.thankyou, notice: 'Mail was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ourmail }
      else
        format.html { render action: 'new' }
        format.json { render json: @ourmail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ourmails/1
  # PATCH/PUT /ourmails/1.json
  def update
    respond_to do |format|
      if @ourmail.update(ourmail_params)
        format.html { redirect_to @ourmail, notice: 'Mail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ourmail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ourmails/1
  # DELETE /ourmails/1.json
  def destroy
    @ourmail.destroy
    respond_to do |format|
      format.html { redirect_to ourmails_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ourmail
      @ourmail = Ourmail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ourmail_params
      params.require(:ourmail).permit(:email)
    end
end
