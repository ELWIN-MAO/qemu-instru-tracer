#!/usr/bin/ruby -w

fh = File.new("#{ARGV[1]}", "w") 

File.open("#{ARGV[0]}","r") do |file|  
	while line = file.gets 
		arr=line.split(" ");
		if(arr[3])
			if(arr[4])
				if(arr[4]=="none")
					fh.puts line
				else
					res=`sqlite3 funcinfo.db 'select name from #{arr[4]} where startaddr="#{arr[3]}";'`
				end
			else
				res=`sqlite3 funcinfo.db 'select name from basic where startaddr="#{arr[3]}";'`
			end
			ss=res.split(" ")
			fh.puts arr[0] + " " + arr[1] + " " + arr[2] +" "+ ss[0]
		else
				fh.puts line
		end
	end  
end  
