/*    ____             __                       __               
     / __ \_________  / /_____  _________  ____/ /_  ______  ___ 
    / /_/ / ___/ __ \/ __/ __ \/ ___/ __ \/ __  / / / / __ \/ _ \
   / ____/ /  / /_/ / /_/ /_/ / /__/ /_/ / /_/ / /_/ / / / /  __/
  /_/   /_/   \____/\__/\____/\___/\____/\__,_/\__, /_/ /_/\___/ 
                                            /____/             
 ⓒ 2015 Protocodyne LLC, All Rights Reserved.
 본 코드의 모든 저작권은 Protocodyne 에 있으며
 무단 배포 하거나 영리적으로 사용하는것을 금합니다*/

proc(_SendMessage_toOP, @player,

	@values = all_players();
	
	foreach(@value in @values){
	
		if(pisop(@value)){
		
			tmsg(@value, colorize(import('CHSKF.prefix') '관리자 알림: &e&l' .@player '&f&l님의 샵키퍼 버그 사용을 방지했습니다.'));
			tmsg(@value, colorize(import('CHSKF.prefix') '&e&l제작자: &f&lEntryPoint'));
		
		}
	
	}

)
