file_paths = ['config/devices.yml', "#{ENV['HOME']}/.devices.yml", '/etc/devices.yml']

file_paths.each do |path|
  if File.exists?(path)
    namespace :device do
      tasks = []
      
      YAML.load(File.read(path)).each do |name, id|
        tasks << name
        
        desc "Deploy on #{name}"
        task name do
          sh "rake device id=#{id}"
        end
      end
      
      desc "Deploy on all devices"
      task :all => tasks
    end
  end
end
