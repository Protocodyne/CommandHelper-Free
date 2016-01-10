/*    ____             __                       __               
     / __ \_________  / /_____  _________  ____/ /_  ______  ___ 
    / /_/ / ___/ __ \/ __/ __ \/ ___/ __ \/ __  / / / / __ \/ _ \
   / ____/ /  / /_/ / /_/ /_/ / /__/ /_/ / /_/ / /_/ / / / /  __/
  /_/   /_/   \____/\__/\____/\___/\____/\__,_/\__, /_/ /_/\___/ 
                                            /____/             
 ⓒ 2015 Protocodyne LLC, All Rights Reserved.
 본 코드의 모든 저작권은 Protocodyne 에 있으며
 무단 배포 하거나 영리적으로 사용하는것을 금합니다*/

export('CHSKF.prefix', colorize('&c&l[CHSKF]&f&l'));

bind(inventory_click, null, null, @e,

	if(equals(@e['inventorytype'], 'MERCHANT') && (equals(@e['action'], 'COLLECT_TO_CURSOR') || equals(@e['action'], 'MOVE_TO_OTHER_INVENTORY'))){
	
		cancel();
		msg(colorize(import('CHSKF.prefix') '&f&l샵키퍼 버그는 허용되지 않습니다.'));
		_SendMessage_toOP(@e['player']);
	
	}

)
