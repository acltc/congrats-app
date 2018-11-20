class StudentsController < ApplicationController

	def index
		@students = Student.all
		redirect_to '/404' unless params[:password] = Password.last.password
	end

	def show
		@student = Student.find_by(slug: params[:slug])
		redirect_to '/404' unless @student
	end

	def new
		@student = Student.new
		redirect_to '/404' unless params[:password] = Password.last.password
	end

	def create
		@student = Student.create(name: params[:name], video_1: params[:video_1], video_2: params[:video_2], video_3: params[:video_3], slug: (0...12).map { (65 + rand(26)).chr }.join)
		redirect_to "/congrats/#{@student.slug}"
	end

end
