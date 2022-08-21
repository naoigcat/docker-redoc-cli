desc "Update node version"
task :node, [:version] do |_, arguments|
  require "pathname"
  file = Pathname.new("Dockerfile")
  file.read.sub(/(?<=node:)\d+/) do |match|
    arguments.version || (match.to_i + 2)
  end.tap(&file.method(:write))
end

%I[major minor patch].each do |name|
  desc "Update #{name} version"
  task name, [:times, :version] do |task, arguments|
    require "pathname"
    arguments.with_defaults(times: 1)
    branches = IO.popen("git branch --format='%(refname:short)'", &:readlines).map(&:chomp).rotate
    (arguments.version ? 1 : arguments.times.to_i).times do
      branches.each.with_index do |branch, index|
        sh "git checkout #{branch}"
        file = Pathname.new("Dockerfile")
        node = file.read.match(/(?<=node:)\d+(?=-alpine)/).to_s
        if index.zero?
          file.read.sub(/(?<=redoc-cli@)\d+\.\d+\.\d+/) do |match|
            major, minor, patch = match.split(".")
            eval <<~CODE, binding, __FILE__, __LINE__ + 1 # rubocop:disable Security/Eval
              # major = arguments.version || (major.to_i + 1)
              #{task.name} = arguments.version || (#{task.name}.to_i + 1)
            CODE
            "#{major}.#{minor}.#{patch}"
          end.tap(&file.method(:write))
          version = file.read.match(/(?<=redoc-cli@)\d+\.\d+\.\d+/)
          sh "git add #{file}"
          sh "git commit --message 'Bump redoc-cli to #{version}'"
        else
          sh "git merge --no-ff --no-commit node#{node.to_i - 2}"
          sh "git commit --message '#{IO.popen("git log -1 --pretty=format:%s node#{node.to_i - 2}", &:read)}'"
          version = file.read.match(/(?<=redoc-cli@)\d+\.\d+\.\d+/)
        end
        sh "git tag #{version}-node#{node}"
        sh "git push origin #{version}-node#{node}"
        sleep 60
      end
    end
  end
end
