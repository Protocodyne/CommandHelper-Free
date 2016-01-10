set_timeout(100, closure(

	if(!has_value(aliaseslist) || !equals(get_value(aliaseslist), get_aliases())) {
		store_value(aliaseslist, get_aliases())
	}

	@alist = get_value(aliaseslist)
	@calist = get_aliases()

	#최신 판에 존재하는 명령어는 전부 추가
	foreach(@calias in @calist) {
		@casplited = substr(split(' ', split(':', @calias)[1])[0], 1)
		register_command(@casplited, array(
			tabcompleter: closure(
				@players = array()
				@name = @arguments[2][length(@arguments[2]) - 1]
				foreach(@player in all_players()){
					if(string_position(to_lower(@player), to_lower(@name)) == 0){
						@players[] = @player;
					}
				}
			return(@players)
			))
		)
	}

	#과거 판에만 존재하는 명령어는 전부 삭제
	foreach(@alias in @alist) {
		if(array_contains(@calist, @alias)) {
			@asplited = substr(split(' ', split(':', @alias)[1])[0], 1)
			register_command(@asplited, array(
				tabcompleter: closure(
					@players = array()
					@name = @arguments[2][length(@arguments[2]) - 1]
					foreach(@player in all_players()){
						if(string_position(to_lower(@player), to_lower(@name)) == 0){
							@players[] = @player;
						}
					}
				return(@players)
				))
			)
		} else {
			@asplited = substr(split(' ', split(':', @alias)[1])[0], 1)
			unregister_command(@asplited)
		}
	}
))