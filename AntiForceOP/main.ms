/*    ____             __                       __               
     / __ \_________  / /_____  _________  ____/ /_  ______  ___ 
    / /_/ / ___/ __ \/ __/ __ \/ ___/ __ \/ __  / / / / __ \/ _ \
   / ____/ /  / /_/ / /_/ /_/ / /__/ /_/ / /_/ / /_/ / / / /  __/
  /_/   /_/   \____/\__/\____/\___/\____/\__,_/\__, /_/ /_/\___/ 
                                            /____/             
 ⓒ 2015 Protocodyne LLC, All Rights Reserved.
 본 코드의 모든 저작권은 Protocodyne 에 있으며
 무단 배포 하거나 영리적으로 사용하는것을 금합니다*/

x_new_thread('PlayerForeach', closure(){

	set_interval(1000, closure(){
	
		@prefix = import('prefix')
	
		@allplayer = all_players()
	
		foreach(@ap in @allplayer){
	
			if(has_permission(@ap, 'authme.admin.changepassword') || has_permission(@ap, 'permissions.manage.users.permissions.<users>')){
			
				@op = get_value('server.op_list')
								
				foreach(@oplist in @op){
									
					if(equals(to_lower(@ap), to_lower(@oplist))){
					
						exit()
						
					}
				}

					runas('~console', '/clear' @ap)
					runas('~console', '/ban' @ap '&c&l[ 종이서버 시스템 ] &f&l목록에 없는 관리 권한자로 감지되어 차단되었으며 관련 정보, 로그 모두 저장되었습니다.')
					runas('~console', '/banip' @ap '&c&l[ 종이서버 시스템 ] &f&l목록에 없는 관리 권한자로 감지되어 차단되었으며 관련 정보, 로그 모두 저장되었습니다.')
					runas('~console', '/pex user' @ap 'delete')
					runas('~console', '/deop' @ap)
					runas('~console', colorize('/mail send EntryPoint' '&c&l' .simple_date('yyyy.MM.dd h:mm a') '&e&l'.@ap.': &f&l관리 권한 취득, 영구밴처리 되었습니다.'))
					broadcast(colorize(@prefix '&e&l' .@ap '&f&l님이 올바르지 않은 경로로 권한을 취득하여 영구밴 처리되었습니다.'))

				exit()
					
					
				
			}
	
		}
	
	})

})