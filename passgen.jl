function gen_pass()
	v = ARGS[2]
	f_set = Any[]
	while length(f_set) != int(v)
		for i in rand(1:z)
			for x in c_set[i]
				push!(f_set, x)
			end
		end
	end
z_set = join(f_set)
println(z_set)
end

lower = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
upper = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
num = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
while true
	if ARGS[1] == "-l"
		global c_set = lower
		global z = length(c_set)
		gen_pass()
	elseif ARGS[1] == "-u"
		global c_set = upper
		global z = length(c_set)
		gen_pass()
	elseif ARGS[1] == "-lu"
		global c_set = vcat(lower, upper)
		global z = length(c_set)
		gen_pass()
	elseif ARGS[1] == "-n"
		global c_set = num
		global z = length(c_set)
		gen_pass()
	elseif ARGS[1] == "-ln"
                global c_set = vcat(lower, num)
                global z = length(c_set)
                gen_pass()
	elseif ARGS[1] == "-un"
                global c_set = vcat(upper, num)
                global z = length(c_set)
                gen_pass()
    elseif ARGS[1] == "-lun"
		global c_set = vcat(lower, upper, num)
		global z = length(c_set)
		gen_pass()
	else
		println("Arguments: -l [num], -u [num]")
		break
	end
end
