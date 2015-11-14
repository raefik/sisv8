module ApplicationHelper

	def title
	base_title="SIS-UiTM"
		if @title.nil?
		base_title
		else
		"#{base_title}|#{@title}"
		end
	end

	def logo
	image_tag("logo.png", :alt=>"SIMS",:class=>"round")
	end
	def time
	 @time=DateTime.now.strftime(" %A,%d-%m-%Y %I:%M:%S")
	end

	def javascript(*files)
  		content_for(:head) { javascript_include_tag(*files) }
	end

	def stylesheet(*files)
  		content_for(:head) { stylesheet_link_tag(*files) }
	end

end
