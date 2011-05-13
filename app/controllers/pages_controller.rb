class PagesController < ApplicationController
  def home
    @title="Sample application follow on| Home"
  end

  def contact
    @title="Sample application follow on| Contact"
  end
  
  def about
     @title="Sample application follow on| About"
  end

end
