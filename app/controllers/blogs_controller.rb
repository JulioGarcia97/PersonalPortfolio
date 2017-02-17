class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy, :toggle_status]

  def index
    @blogs = Blog.all
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def edit
  end

  def create
    @blog = Blog.new(blog_params)

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def toggle_status
    # le pasamos la sig. condicion
    # Si el Blog tiene de status draft cambialo a publish
    # Si el Blog tiene el status published cambialo a draft
    if @blog.draft?
      @blog.published!
    elsif @blog.published?
      @blog.draft!
    end
    
    redirect_to blogs_url, notice: 'Se actualizo correctamente'
  end

  private
    def set_blog
      @blog = Blog.friendly.find(params[:id])
      # friendly mapea el id del blog para devolverlo como slug
    end

    def blog_params
      params.require(:blog).permit(:title, :body)
    end
end
