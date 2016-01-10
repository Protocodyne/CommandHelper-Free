proc(_SendMessage_toOP, @player,

	@values = all_players();
	
	foreach(@value in @values){
	
		if(pisop(@value)){
		
			tmsg(@value, colorize(import('CHSKF.prefix') '관리자 알림: &e&l' .@player '&f&l님의 샵키퍼 버그 사용을 방지했습니다.'));
			tmsg(@value, colorize(import('CHSKF.prefix') '&e&l제작자: &f&lEntryPoint'));
		
		}
	
	}

)