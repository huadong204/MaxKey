<div id="nav_primary" >
<div id="nav_primary"  class="menuprimary">
	<ul >
		<li  id="nav_primay_11"  class="nav_primay_level primaryleft"  xpath="">
			<!--我的应用-->
			<a   href="<@base/>/appList"><@locale code="menu.mypps"/></a>
		</li>
		<li  id="nav_primay_13"  class="nav_primay_level primaryleft"  xpath="">
			<!--安全设置-->
			<a   href="<@base/>/safe/forward/setting"><@locale code="menu.setting"/></a>
			<div id="nav_child_1301"  class="nav_second_child">
				<ul>
					<!--安全设置-->
					<li id="nav_second_1301" class="nav_second_level">
						<a   href="<@base/>/safe/forward/setting"><@locale code="menu.setting.security"/></a>
					</li>
				</ul>
				<ul>
					<!--认证关联-->
					<li id="nav_second_1301" class="nav_second_level">
						<a   href="<@base/>/socialsignon/list"><@locale code="menu.setting.sociallink"/></a>
					</li>
				</ul>
				<ul>
					<!--密码修改-->
					<li id="nav_second_1302" class="nav_second_level">
						<a   href="<@base/>/safe/forward/changePasswod"><@locale code="menu.setting.changepassword"/></a>
					</li>
				</ul>
				<ul>
					<!--应用登录密码-->
					<li id="nav_second_1303" class="nav_second_level">
						<a   href="<@base/>/safe/forward/changeAppLoginPasswod"><@locale code="menu.setting.apppassword"/></a>
					</li>
				</ul>
				<ul>
					<!--应用配置-->
					<li id="nav_second_1304" class="nav_second_level">
						<a   href="<@base/>/appConfigList"><@locale code="menu.setting.appsetting"/></a>
					</li>
				</ul>
				<ul>
					<!--时间令牌-->
					<li id="nav_second_1305" class="nav_second_level">
						<a   href="<@base/>/safe/otp/timebased"><@locale code="menu.setting.timetoken"/></a>
					</li>
				</ul>
			</div>
		</li>
		<!--我的资料-->
		<li  id="nav_primay_14"  class="nav_primay_level primaryleft"  xpath="">
			<a  href="<@base/>/profile/myProfile"><@locale code="menu.myprofile"/></a>
		</li>
		<!--日志审计-->
		<li  id="nav_primay_15"  class="nav_primay_level primaryleft"  xpath="">
			<a   href="<@base/>/historys/login"><@locale code="menu.audit"/></a>
			<div id="nav_child_1501"  class="nav_second_child">
				<ul>
					<!--登录日志-->
					<li id="nav_second_1501" class="nav_second_level">
						<a   href="<@base/>/historys/login"><@locale code="menu.audit.login"/></a>
					</li>
				</ul>
				<ul>
					<!--访问日志-->
					<li id="nav_second_1502" class="nav_second_level">
						<a   href="<@base/>/historys/loginApps"><@locale code="menu.audit.signon"/></a>
					</li>
				</ul>
				<ul>
					<!--操作日志-->
					<li id="nav_second_1503" class="nav_second_level">
						<a   href="<@base/>/historys/logs"><@locale code="menu.audit.operation"/></a>
					</li>
				</ul>
			</div>
		</li>
	</ul>
</div>
</div>
<div id="nav_second"  style="clear: left"><div class='menusecond'></div><br style='clear: left' /></div>
<script>
	$(function(){
		function displaySecondNavs(menuId){
			if($("#"+menuId+" .nav_second_child").html()){
				$("#nav_second").html("<div class='menusecond'>"+$("#"+menuId+" .nav_second_child").html()+"</div><br style='clear: left' />");
			}else{
				$("#nav_second").html("");
			}
		}
		
		displaySecondNavs('${Request["mnid"]!"nav_primay_15"}');
		$(".menuprimary ul li").mouseover(function(){
			displaySecondNavs(this.id);
		});
		
	});
</script>