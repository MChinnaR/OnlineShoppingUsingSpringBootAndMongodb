package com.hsshop.useraccount;

import java.util.Iterator;
import java.util.LinkedHashMap;

import org.jongo.Jongo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hsshop.constants.ResponseConstants;
import com.hsshop.mongo.constants.MongoCollectionConstants;
import com.hsshop.pojos.CartPojo;
import com.hsshop.pojos.LoginPojo;
import com.hsshop.pojos.ProfileIdIncrementation;
import com.hsshop.pojos.RegisterPojo;
import com.hsshop.util.MongoDBUtil;

@Repository("userDaoImpl")

public class UserDaoImpl implements UserDao {

	@Autowired
	private ResponseConstants responseConstants;
	
	@Autowired
	private LoginPojo loginPojo;
	
	@Override
	public LoginPojo validateUser(String email) {

		loginPojo = new Jongo(MongoDBUtil.getDB()).getCollection(MongoCollectionConstants.CN_LOGINCREDENTIALS)
				.findOne("{email:#}", email).as(LoginPojo.class);
		return loginPojo;
	}

	@Override
	public RegisterPojo register(RegisterPojo registerPojo) {
		RegisterPojo registerPojo1 = null;

		registerPojo1 = new Jongo(MongoDBUtil.getDB()).getCollection(MongoCollectionConstants.CN_LOGINCREDENTIALS)
				.findOne("{email:#}", registerPojo.getEmail()).as(RegisterPojo.class);

		return registerPojo1;
	}

	@Override
	public long incrementProfileId(String sequenceName) {
		ProfileIdIncrementation seqId = null;
		try {
			new Jongo(MongoDBUtil.getDB()).getCollection(MongoCollectionConstants.CN_COUNTERS)
					.update("{_id:#}", sequenceName).upsert().with("{$inc:{seq:1}}");
			seqId = new Jongo(MongoDBUtil.getDB()).getCollection(MongoCollectionConstants.CN_COUNTERS)
					.findOne("{_id:#}", sequenceName).as(ProfileIdIncrementation.class);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return seqId.getSeq();

	}

	@Override
	public void insertUserDetails(RegisterPojo registerPojo, long profileId) {

		new Jongo(MongoDBUtil.getDB()).getCollection(MongoCollectionConstants.CN_LOGINCREDENTIALS).insert(
				"{profile_id:#,fullname:#,email:#,phone:#,password:#,age:#,gender:#,role:#,address:#}", profileId,
				registerPojo.getFullName(), registerPojo.getEmail(), registerPojo.getPhonenumber(),
				registerPojo.getPassword(), registerPojo.getAge(), registerPojo.getGender(), "",
				registerPojo.getAddress());

	}

	@Override
	public boolean changePassword(String email, String pwd1) {

		try {
			new Jongo(MongoDBUtil.getDB()).getCollection(MongoCollectionConstants.CN_LOGINCREDENTIALS)
					.update("{email:#}", email).upsert().with("{$set:{password:#}}", pwd1);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean addToCart(String item) {

		try {
			CartPojo cartPojo = new Jongo(MongoDBUtil.getDB()).getCollection(MongoCollectionConstants.CN_PRODECTDETAILS)
					.findOne("{productName:#}", item).as(CartPojo.class);

			if (cartPojo.getNoOfProducts() > 0 && cartPojo != null) {
				responseConstants.items.put(cartPojo.getProductName(), cartPojo.getCost());

				new Jongo(MongoDBUtil.getDB()).getCollection(MongoCollectionConstants.CN_UNPAIDCART)
				.insert("{email:#,productName:#,cost:#}",loginPojo.getEmail(),cartPojo.getProductName(),cartPojo.getCost());
//				Iterator k = responseConstants.items.keySet().iterator();
//				while (k.hasNext()) {
//					Object key = k.next();
//				}
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
		return false;
	}

	@Override
	public LinkedHashMap<String, Integer> mainCart() {

		return responseConstants.items;

	}

}
