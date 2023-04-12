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





end
