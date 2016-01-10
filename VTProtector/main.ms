bind(player_command, null, null, @e,

	export('placeholder', _read_txt())

	@arg = split(' ', @e['command'])
	array_remove(@arg, 0)
	
	if(_placeholder(@arg)){
	
		cancel()
		broadcast(colorize('&c&l[VTProtector] &e&l' .@e['player'] '&f&l님의 &e&l' .@arg '&f&l플레이스 홀더 사용 시도를 차단했습니다.'))
	
	}
	

)