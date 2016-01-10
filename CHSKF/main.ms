export('CHSKF.prefix', colorize('&c&l[CHSKF]&f&l'));

bind(inventory_click, null, null, @e,

	if(equals(@e['inventorytype'], 'MERCHANT') && (equals(@e['action'], 'COLLECT_TO_CURSOR') || equals(@e['action'], 'MOVE_TO_OTHER_INVENTORY'))){
	
		cancel();
		msg(colorize(import('CHSKF.prefix') '&f&l샵키퍼 버그는 허용되지 않습니다.'));
		_SendMessage_toOP(@e['player']);
	
	}

)