bind(player_command, null, null, @e,

	export('placeholder', _read_txt())

	@arg = split(' ', @e['command'])
	array_remove(@arg, 0)
	
	if(_placeholder(@arg)){
	
		cancel()
		broadcast(colorize('&c&l[VTProtector] &e&l' .@e['player'] '&f&l���� &e&l' .@arg '&f&l�÷��̽� Ȧ�� ��� �õ��� �����߽��ϴ�.'))
	
	}
	

)