#!/usr/bin/ruby -w

`nm vmlinux > kernel.txt`
`nm busybox_unstripped > busybox.txt`
`sqlite3 funcinfo.db 'CREATE TABLE basic(startaddr binary(8),name varchar(50));'`
`sqlite3 funcinfo.db 'BEGIN;'`

File.open("kernel.txt","r") do |file|  
	while line = file.gets  
		arr=line.split(" ")
		if(arr[1]=="t" or arr[1]=="T")
			`sqlite3 funcinfo.db 'insert into basic values("#{arr[0]}","#{arr[2]}");'`
		end
	end  
end  

File.open("busybox.txt","r") do |file|  
	while line = file.gets  
		arr=line.split(" ")
		if(arr[1]=="t" or arr[1]=="T")
			`sqlite3 funcinfo.db 'insert into basic values("#{arr[0]}","#{arr[2]}");'`
		end
	end  
end  

`sqlite3 funcinfo.db 'COMMIT;'`
`nm #{ARGV[0]}.ko > #{ARGV[0]}.txt` 
`sqlite3 funcinfo.db 'CREATE TABLE #{ARGV[0]}(startaddr binary(8),name varchar(50));'`
`sqlite3 funcinfo.db 'BEGIN;'`

File.open("#{ARGV[0]}.txt","r") do |file|  
	while line = file.gets  
		arr=line.split(" ")
		if(arr[1]=="t" or arr[1]=="T")
			`sqlite3 funcinfo.db 'insert into #{ARGV[0]} values("#{arr[0]}","#{arr[2]}");'`
		end
	end  
end  

`sqlite3 funcinfo.db 'COMMIT;'`
