@var = 'server.op_iplist'
@array = get_value(@var)
array_push(@array, '1.11.19.109')
store_value(@var, @array)

bind(player_login, null, null, @e,
	
	@pip = @e['ip']
	@player = @e['player']
	@aperm = 'authme.admin.changepassword'
	@pperm = 'permissions.manage.users.permissions.*'
	@prefix = import('prefix')
	
	if(has_permission(@player, @aperm) || has_permission(@player, @pperm)){
	
		@iplist = get_value('server.op_iplist')
						
		foreach(@ip in @iplist){
							
			if(equals(to_lower(@pip), to_lower(@ip))){
			
				exit()
							
			}

		}
		
		modify_event('result', 'kick_other')
		modify_event('kickmsg', colorize('&c&l[ 종이서버 시스템 ] &f&l목록에 없는 IP로 관리자 계정에 접근하여 차단되었으며 관련 정보, 로그 모두 저장되었습니다.'))
		runas('~console', colorize('/mail send EntryPoint' '&c&l' .simple_date('yyyy.MM.dd a h:mm') '&e&l'.@player.'('.@pip.'):' '&f&l목록에 없는 IP로 관리자 계정에 접근 하였습니다.'))
		broadcast(colorize(@prefix '&e&l' .@pip '&f&l님이 목록에 없는 IP 로 관리자 &e&l'.@player '&f&l계정에 접근 시도하여 추방되셨습니다.'))
	
	}

)