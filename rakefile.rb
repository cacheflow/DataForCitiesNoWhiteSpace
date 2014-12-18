require "rake"

task :default do
	Rake::FileList.new("**/*rakefile*").each do |file|
		ruby file 
end
end