module ApplicationHelper
    # Return the full title on a per page basis
    #Ruby on Rails Sample App! 
    def full_title(page_title = '')                                         
        base_title = "Firecaller Blogs"
        if page_title.empty? 
            base_title
        else
            page_title + " | " + base_title
        end
    end 
end
