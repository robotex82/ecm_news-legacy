module Ecm
  module News
    class Enine < Rails::Engine
      config.to_prepare do
        ApplicationController.helper(Ecm::NewsHelper)
      end  
    end
  end  
end
