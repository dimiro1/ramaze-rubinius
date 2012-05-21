class Controller < Ramaze::Controller
  layout :default
  helper :xhtml, :blue_form, :csrf, :paginate
  #engine :erubis

  before_all do
    csrf_protection :create, :update do
      respond("The supplied CSRF token is invalid.", 401)
    end
  end
end

Dir.glob(__DIR__('*.rb')).each do |controller|
  require(controller)
end
