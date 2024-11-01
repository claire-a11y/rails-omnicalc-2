class DivisionController < ApplicationController
  def show_division_form
    render({ :template => "div_templates/division_form" })
  end

  def divide_these
    @first_number = params.fetch("first_num").to_f
    @second_number = params.fetch("second_num").to_f

    if @second_number == 0
      @result = "Error: Division by zero is undefined."
    else
      @result = @first_number / @second_number
    end

    render({ :template => "div_templates/divide_results" })
  end
end
