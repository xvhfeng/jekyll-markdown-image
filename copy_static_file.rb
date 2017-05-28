Jekyll::Hooks.register :posts, :post_write do |doc|
  # Minify HTML files after site build
#  gulp = File.join(site.source, 'node_modules', '.bin', 'gulp')
#  system "#{gulp} minifyHTML --silent"
    #
#Kernel.puts "11111111111111111111"
#Kernel.puts doc.path

pn = Pathname.new(doc.path)
basedir  = pn.dirname 
dest_path =File.join(doc.site.config["destination"] , doc.url)
Dir.foreach(basedir) {|x| 
    if !(x.start_with?("."))
        if !(x.end_with?("md") || x.end_with?("markdown"))
            stmp = File.join(basedir,x)
            dtmp = File.join(dest_path,x)
            Kernel.puts stmp
            Kernel.puts dtmp
            FileUtils.cp(stmp,dtmp)
            Kernel.puts "copy static file from #{stmp} to #{dtmp}"
        end
    end
}

#Kernel.puts "begin"
#Kernel.puts basedir
#Kernel.puts dest_path
#Kernel.puts "end"

#FileUtils.cp("F:\\test1.rb", "F:\\Test“) 
#Kernel.puts doc.relative_path
#Kernel.puts doc.cleaned_relative_path
#Kernel.puts doc.site.config["source"]
#Kernel.puts doc.site.config
end
