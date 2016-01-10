proc(_placeholder, @arg,

	@array = split(',', import('contents'))
	
	foreach(@ph in @array){

		if(string_position(@arg, '<'.@ph) >= 0 && string_position(@arg, '>') >= 0
			,return(true))
	
	}

)

proc(_read_txt,

	export('contents', (read('./file/placeholder.txt')))

)