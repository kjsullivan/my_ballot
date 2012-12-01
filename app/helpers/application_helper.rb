module ApplicationHelper
  
  def current_user
     @user ||= User.find_by_id(session[:id]) if logged_in?
   end
   
   def admin
     User.find(session[:id]).email == "admin@my-ballot.org" if logged_in?
   end
  
end
