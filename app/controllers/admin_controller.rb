class AdminController < ApplicationController
   http_basic_authenticate_with name: ENV.fetch('ADMIN_NAME'), password: ENV.fetch('ADMIN_PASS')

   def index
   end

end
