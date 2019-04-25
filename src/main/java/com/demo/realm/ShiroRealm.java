package com.demo.realm;

import java.util.ArrayList;
import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

 



import org.springframework.beans.factory.annotation.Qualifier;

import com.demo.dao.ManagerDao;
import com.demo.model.Manager; 
import com.demo.service.ManagerService; 

public class ShiroRealm  extends AuthorizingRealm{
    
	
	@Autowired
	private ManagerService managerService;
	
	/*@Autowired
	private RoleService roleService;
	@Autowired
	private PermissionService permissionService;*/

	public  String getName(){
    	return "ShiroRealm";
    }
	
	//授权操作
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) { 
		//User  user=(User) principals.getPrimaryPrincipal();
		List<String> permissions=new ArrayList<String>();
		List<String> roles=new ArrayList<String>();
		permissions.add("*:*");
		roles.add("系统管理员");
		/* if("admin".equals(user.getUsername()))
		{
			 //拥有所有权限
			permissions.add("*:*");
			 //查询所有角色
			roles=roleService.findAllRoles();
		}
		 else  
		{   
			//根据用户id查询用户拥有的权限
			permissions=permissionService.findPermissionResouresByUserId(user.getId());
			//根据用户id查询用户拥有的角色
			roles=roleService.findAllRolesByUserId(user.getId());
		}*/
		SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();
		info.addStringPermissions(permissions);
		info.addRoles(roles);
		return info;
	}

	//认证操作
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        //从token中获取登录的用户名，查询数据库返回用户信息
		String username=(String) token.getPrincipal();  
		Manager manager=managerService.findUserByUsername(username);
		
		if(manager==null)
			return null;
	
		if (manager.getIs_lock()==1) {
			throw new LockedAccountException("Account [" + manager.getUser_name() + "] is locked.");
		}
		 
		SimpleAuthenticationInfo info =new SimpleAuthenticationInfo(manager,manager.getPassword(),ByteSource.Util.bytes(manager.getUser_name()),getName());
		return info;
		
		/*return null;*/
	}
     
	//清除缓存
	public void clearCached(){
		//获取当前用户的凭证，然后清除
		PrincipalCollection principals=SecurityUtils.getSubject().getPrincipals();
		super.clearCache(principals);
	}
	
	
}
