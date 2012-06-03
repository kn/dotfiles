require 'rake'

desc "install the dot files into home directory"
task :install do
  files = Dir['.*'] - [".", "..", ".git"]
  files.each do |file|
    if File.exist? File.join(ENV['HOME'], "#{file}")
      if File.identical? file, File.join(ENV['HOME'], "#{file}")
        puts "~/#{file} is identical."
      else
        print "Overwrite ~/#{file}? [yn]: "
        case $stdin.gets.chomp
        when 'y'
          create_sym_link_for(file)
        else
          puts "Skipped ~/#{file}."
        end
      end
    else
      create_sym_link_for(file)
    end
  end
  puts "Done."
end

def create_sym_link_for(file)
  puts "Linking ~/.#{file}..."
  system %Q{ln -s "$PWD/#{file}" "$HOME/#{file}"}
end
