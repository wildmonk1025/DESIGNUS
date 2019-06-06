package com.designus.www.dao;

import java.util.List;
import com.designus.www.bean.RevAuction;

//import org.springframework.stereotype.Repository;

public interface IRevAuctionDao {

	int revAuctionSubmitInsert(RevAuction ra);

	List<RevAuction> getRevAuctionListSelect(RevAuction rau);

	RevAuction revAuctionReadSelect(RevAuction ra_num);

  
}
