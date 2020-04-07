class SchoolClassesController < ApplicationController

  def new
  end

  def create
<<<<<<< HEAD
    sclass = SchoolClass.new(school_params(:title, :room_number))
=======
    sclass = SchoolClass.new(post_params(:title, :room_number))
>>>>>>> 5651b8f17c872fa0d037723edb69d628b134a345
    sclass.save
    redirect_to school_class_path sclass
  end

  def show
    @sclass = SchoolClass.find(params[:id])
  end

  def edit
    @sclass = SchoolClass.find(params[:id])
  end

  def update
    sclass = SchoolClass.find(params[:id])
<<<<<<< HEAD
    sclass.update(school_params(:title, :room_number))
=======
    sclass.update(post_params(:title, :room_number))
>>>>>>> 5651b8f17c872fa0d037723edb69d628b134a345
    redirect_to school_class_path sclass
  end

  private
<<<<<<< HEAD
  def school_params(*args)
=======
  def post_params(*args)
>>>>>>> 5651b8f17c872fa0d037723edb69d628b134a345
    params.require(:school_class).permit(*args)
  end
end
