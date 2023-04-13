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
    @num = params.fetch("number").to_f  
    @square_of_num = @num ** 2
    render({:template => "calculation_templates/square_results.html.erb"})
  end

  def calculate_square_root
    @num = params.fetch("user_number").to_f  
    @square_root_of_num = @num ** 0.5
    render({:template => "calculation_templates/square_root_results.html.erb"})
  end

  def calculate_payment
    @apr = params.fetch("user_apr").to_f
    @num_years = params.fetch("user_years").to_f
    @num_years = @num_years.round(0)
    @principal = params.fetch("user_pv").to_f
    @rate = @apr/100
    @monthly_rate = @rate/12
    @num_months = @num_years*12
    @monthly_payment= (@principal * @monthly_rate)/(1-(1+@monthly_rate)**(-1*@num_months))
    @apr = @apr.to_s(:percentage, { :precision => 4 } )
    @principal = @principal.to_s(:currency)
    @monthly_payment = @monthly_payment.to_s(:currency)

    render({:template => "calculation_templates/payment_results.html.erb"})
  end

  def calculate_random_number
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @rand_num = rand(@min..@max)
    render({:template => "calculation_templates/random_number_results.html.erb"})
  end


end
