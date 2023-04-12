class ApplicationController < ActionController::Base

  def blank_square_form
    render({:template => "calculation_templates/square_form.html.erb"})
  end

  def blank_square_root_form

    render({:template => "calculation_templates/square_root_form.html.erb"})
  end

  def blank_payment_form

    render({:template => "calculation_templates/payment_form.html.erb"})
  end

  def blank_random_number_form

    render({:template => "calculation_templates/random_number_form.html.erb"})
  end

  def calculate_square
      render({:template => "calculation_templates/square_results.html.erb"})
  end

  def calculate_square_root
      render({:template => "calculation_templates/square_root_results.html.erb"})
  end

  def calculate_payment
    render({:template => "calculation_templates/payment_results.html.erb"})
  end

  def calculate_random_number
    render({:template => "calculation_templates/random_number_results.html.erb"})
  end


end
