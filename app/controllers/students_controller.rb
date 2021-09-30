class StudentsController < ApplicationController

    def index
students = Student.all 
render json: students
    end 

    def grades
        grades = Student.order(grade: :desc)
        render json: grades
    end 

    def highest_grade
        high = Student.order(grade: :desc).limit(1)
        render json: high
    end 
end
