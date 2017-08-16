package com.tmhi.realm;

import com.tmhi.entity.Role;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;


public class MyRealm extends AuthorizingRealm {
	//@Resource
	//private AdminService adminService;
	//授权
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principal) {
		String username = (String)principal.getPrimaryPrincipal();
		
		//List<Role> roles = adminService.queryOne(username);

		List<String> list1 = new ArrayList<String>();
		List<String> list2 = new ArrayList<String>();
		
		/*for(Role r : roles){
			list1.add(r.getRole_name());
			for(com.tmhi.entity.Resource p : r.getList()){
				list2.add(p.getResource_name());
			}
		}*/

		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		//info.addRoles(list1);
		//info.addStringPermissions(list2);
		return info;
	}
	//认证
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		String username = (String) token.getPrincipal();
		
		//Admin user = adminService.queryOneUserByName(username);
		String password = null;//user.getPassword();
		String salt = null; // user.getSalt();
		//String email = user.getEmail();
		/*if(!email.equals(username)){
			return null;
		}
		System.out.println("MyRealm"+user);*/
		SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(username, password, ByteSource.Util.bytes(salt),this.getName());
		return info;
	}
	
}
