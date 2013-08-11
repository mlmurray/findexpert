class RecordEmailsController < ApplicationController
  before_action :set_record_email, only: [:show, :edit, :update, :destroy]

  # GET /record_emails
  # GET /record_emails.json
  def index
    @record_emails = RecordEmail.all
  end

  # GET /record_emails/1
  # GET /record_emails/1.json
  def show
  end

  # GET /record_emails/new
  def new
    @record_email = RecordEmail.new
  end

  # GET /record_emails/1/edit
  def edit
  end

  # POST /record_emails
  # POST /record_emails.json
  def create
    @record_email = RecordEmail.new(record_email_params)

    respond_to do |format|
      if @record_email.save
        format.html { redirect_to @record_email, notice: 'Record email was successfully created.' }
        format.json { render action: 'show', status: :created, location: @record_email }
      else
        format.html { render action: 'new' }
        format.json { render json: @record_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /record_emails/1
  # PATCH/PUT /record_emails/1.json
  def update
    respond_to do |format|
      if @record_email.update(record_email_params)
        format.html { redirect_to @record_email, notice: 'Record email was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @record_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /record_emails/1
  # DELETE /record_emails/1.json
  def destroy
    @record_email.destroy
    respond_to do |format|
      format.html { redirect_to record_emails_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record_email
      @record_email = RecordEmail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def record_email_params
      params.require(:record_email).permit(:email)
    end
end
