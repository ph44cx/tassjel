class UnmDashController < ApplicationController
  def index
  	@unm_un = UnmUn.new
  	@unm_uns = UnmUn.all
  end
end
