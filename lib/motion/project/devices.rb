file_paths = ['config/devices.yml', "#{ENV['HOME']}/.devices.yml", '/etc/devices.yml']

file_paths.each do |path|
  if File.exists?(path)
    namespace :device do
      YAML.load(File.read(path)).each do |name, id|
        desc "Deploy on #{name}"
        task name do
          sh "rake device id=#{id}"
        end
      end
    end
  end
end
