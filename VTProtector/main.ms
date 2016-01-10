/*    ____             __                       __               
     / __ \_________  / /_____  _________  ____/ /_  ______  ___ 
    / /_/ / ___/ __ \/ __/ __ \/ ___/ __ \/ __  / / / / __ \/ _ \
   / ____/ /  / /_/ / /_/ /_/ / /__/ /_/ / /_/ / /_/ / / / /  __/
  /_/   /_/   \____/\__/\____/\___/\____/\__,_/\__, /_/ /_/\___/ 
                                            /____/             
 ⓒ 2015 Protocodyne LLC, All Rights Reserved.
 본 코드의 모든 저작권은 Protocodyne 에 있으며
 무단 배포 하거나 영리적으로 사용하는것을 금합니다*/

bind(player_command, null, null, @e,

	export('placeholder', _read_txt())

	@arg = split(' ', @e['command'])
	array_remove(@arg, 0)
	
	if(_placeholder(@arg)){
	
		cancel()
		broadcast(colorize('&c&l[VTProtector] &e&l' .@e['player'] '&f&l님의 &e&l' .@arg '&f&l플레이스 홀더 사용 시도를 차단했습니다.'))
	
	}
	

)
