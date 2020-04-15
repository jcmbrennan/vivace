class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]
  layout "lessons"

  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

  # GET /lessons
  # GET /lessons.json
  def index
    @lessons = Lesson.all
    @page_title = "Our lessons"
  end

  # GET /lessons/1
  # GET /lessons/1.json
  def show
    @page_title = "Our lessons"
  end

  # GET /lessons/new
  def new
    @lesson = Lesson.new
  end

  def search
     st = "%#{params[:q]}%"
     @lessons = Lesson.where("title like ?", st)
  end

  # GET /lessons/1/edit
  def edit
  end

  # POST /lessons
  # POST /lessons.json
  def create
    @lesson = Lesson.new(lesson_params)

    respond_to do |format|
      if @lesson.save
        format.html { redirect_to @lesson, notice: 'Lesson was successfully created.' }
        format.json { render :show, status: :created, location: @lesson }
      else
        format.html { render :new }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lessons/1
  # PATCH/PUT /lessons/1.json
  def update
    respond_to do |format|
      if @lesson.update(lesson_params)
        format.html { redirect_to @lesson, notice: 'Lesson was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson }
      else
        format.html { render :edit }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.json
  #def destroy
   # @lesson.destroy
    #  respond_to do |format|
     # format.html { redirect_to lessons_url, notice: 'Lesson was successfully destroyed.' }
      #format.json { head :no_content }
    #end
  #end

  def destroy
    #perform the lookup
    @lesson = Lesson.find(params[:id])
    #Destroy/delete the record
    @lesson.destroy
    #Redirect
    respond_to do |format|
      format.html {redirect_to lessons_url, notice: 'Lesson was successfully removed.'}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lesson_params
      params.require(:lesson).permit(:title, :desc, :price, :image_url, :category_name, :category_id, :level, :start_date, :duration, :tutor_name, :tutor_id)
    end
end
