require "rake"

task default: %w[cityData]

task :cityData do 
	files = Rake::FileList.new("*.rb")
	ruby files
end 