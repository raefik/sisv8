class JavascriptController < ApplicationController

def dynamic_kampus

	@kampus_faculties = Kampusfaculty.find(:all)


end
