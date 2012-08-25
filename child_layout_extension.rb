# Uncomment this if you reference any of your controllers in activate
# require_dependency "application_controller"
require "radiant-child_layout-extension"

class ChildLayoutExtension < Radiant::Extension
  version     RadiantChildLayoutExtension::VERSION
  description RadiantChildLayoutExtension::DESCRIPTION
  url         RadiantChildLayoutExtension::URL


  def activate    
    admin.page.edit.add :layout, "admin/pages/passed_child_layout", :after => "edit_layout"
    
    Page.class_eval do
      
      belongs_to :set_layout, :class_name => 'Layout', :foreign_key => 'layout_id'
   		belongs_to :child_layout, :class_name => 'Layout', :foreign_key => "child_layout_id"
   		
   		# Override layout to check for a passed child layout before inheriting the parent set layout
			def layout
			  unless set_layout
          if parent?
            parent.child_layout ? parent.child_layout : parent.layout
          end
        else
          set_layout
        end
		  end
		  
    end    
  end
end
