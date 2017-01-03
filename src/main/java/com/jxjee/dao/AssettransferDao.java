package com.jxjee.dao;

import com.jxjee.entity.AssettransferInfo;
import com.jxjee.entity.ThePage;

/**
 * Created by zz on 2017/1/3.
 */
public interface AssettransferDao {
    AssettransferInfo add(final AssettransferInfo assettransferInfoInfo_old);

    AssettransferInfo getAssettransfer(int id);

    ThePage<AssettransferInfo> getAssettransferPage(String keyname, int assettype, int createrid, int pageno, int astatus, int cstatus);

    boolean update(AssettransferInfo assettransferInfo);

    boolean delete(int id);
}
