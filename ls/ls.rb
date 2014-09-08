if ARGV[0] == nil
	# ARGV[0]が空の場合、カレントディレクトリの走査を行う
	ARGV[0] = "."
end

for entry in Dir::entries(ARGV[0])
#	if entry == "." || entry == ".."
#		# "."と".."は読み飛ばす
#		next
#	end
	
	if Dir::exists?(entry)
	    # ディレクトリの場合、<dir>と後ろにつける
	    print "<dir>\t" + entry + "\n"
	else
    	print "\t" + entry + "\n"
    end
end

