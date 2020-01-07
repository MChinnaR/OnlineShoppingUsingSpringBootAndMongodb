package com.hsshop.useraccount;

import java.util.LinkedHashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsshop.pojos.AddressPojo;
import com.hsshop.pojos.LoginPojo;
import com.hsshop.pojos.ProfileIdIncrementation;
import com.hsshop.pojos.RegisterPojo;
import com.hsshop.util.PasswordEncoder;

@Service("userService")
public class UserService {

	@Autowired
	private UserDao userDaoImpl;

	PasswordEncoder passwordecoder = new PasswordEncoder();

	public String validateUser(String email, String password) {

		LoginPojo loginPojo = userDaoImpl.validateUser(email);

		if (loginPojo == null) {
			return "";
		} else {
			System.out.println("login Successful");
			// passwordecoder.bCrypt(password,loginPojo.getPassword());
			if (passwordecoder.bCrypter(password, loginPojo.getPassword())) {
				if (loginPojo.getRole().equals("admin")) {
					return "admin";
				} else {
					return "user";
				}
			} else
				return "";
		}
	}

	public boolean register(RegisterPojo registerPojo, AddressPojo addressPojo) {

		if (userDaoImpl.register(registerPojo) == null) {
			String orginalPassword = passwordecoder.encryptingPassword(registerPojo.getPassword());
			registerPojo.setPassword(orginalPassword);
			long profileId = userDaoImpl.incrementProfileId(ProfileIdIncrementation.INC_PROFILEID);
			userDaoImpl.insertUserDetails(registerPojo, profileId);
			return true;
		}
		return false;
	}

	public void changePassword(String email, String pwd1) {

		userDaoImpl.changePassword(email, passwordecoder.encryptingPassword(pwd1));

	}

	public boolean addToCart(String item) {

		int n = 0;
		boolean value = userDaoImpl.addToCart(item);
		return value;

	}

	public LinkedHashMap<String, Integer> mainCart() {

		LinkedHashMap<String, Integer> items = userDaoImpl.mainCart();

		return items;
	}

}
