#require "#{Rails.root}/lib/germanizer/verby"

class VerbsController < ApplicationController
  before_action :set_verb, only: [:show, :edit, :update, :destroy]


  # GET /verbs
  # GET /verbs.json
  def index
    @verbs = Verb.all
  end

  # GET /verbs/1
  # GET /verbs/1.json
  def show
  end

  # GET /verbs/new
  def new
    @verb = Verb.new
    @tenses = Tense.all
  end

  # GET /verbs/1/edit
  def edit
    @tenses = Tense.all
  end

  # POST /verbs
  # POST /verbs.json
  def create
    @verb = Verb.new(verb_params)

    if params[:commit] == 'Guess'
      unless (verb_params[:infinitive]).empty?
        conj = Verby.present_conj(verb_params[:infinitive])
        unless conj.nil? || conj.empty?
          @verb.ich = conj['ich']
          @verb.du = conj['du']
          @verb.er = conj['er']
          @verb.wir = conj['wir']
          @verb.ihr = conj['ihr']
          @verb.sie = conj['Sie']
        end
      end
      @tenses = Tense.all
      render :new
    else
      respond_to do |format|
        if @verb.save
          format.html { redirect_to :verbs, notice: 'Verb was successfully created.' }
          format.json { render :index, status: :created, location: @verb }
        else
          @tenses = Tense.all
          format.html { render :new }
          format.json { render json: @verb.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /verbs/1
  # PATCH/PUT /verbs/1.json
  def update
    respond_to do |format|
      if @verb.update(verb_params)
        format.html { redirect_to @verb, notice: 'Verb was successfully updated.' }
        format.json { render :show, status: :ok, location: @verb }
      else
        format.html { render :edit }
        format.json { render json: @verb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /verbs/1
  # DELETE /verbs/1.json
  def destroy
    @verb.destroy
    respond_to do |format|
      format.html { redirect_to verbs_url, notice: 'Verb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_verb
      @verb = Verb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def verb_params
      params.require(:verb).permit(:infinitive, :tense_id, :ich, :du, :er, :wir, :ihr, :sie)
    end
end
