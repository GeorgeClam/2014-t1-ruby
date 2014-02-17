class CreateMathQuizzes < ActiveRecord::Migration
  def change
    create_table :math_quizzes do |q|
    	q.string :number
    	q.string :problem
    	q.string :solution1
    	q.string :solution2
    	q.string :solution3
    	q.string :solution4
    end
  end
end
