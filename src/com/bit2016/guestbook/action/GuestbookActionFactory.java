package com.bit2016.guestbook.action;

import com.bit2016.web.Action;
import com.bit2016.web.Actionfactory;

public class GuestbookActionFactory extends Actionfactory {

	@Override
	public Action getAction(String actionName) {
		Action action = null;
		
		if("insert".equals(actionName)){
			action = new InsertAction();
		}else if("deleteform".equals(actionName)){
			action = new DeleteFormAction();
		}else if("delete".equals(actionName)){
			action = new Delete();
		}else {
			action = new ListAction();
		}
		return action;
	}

}
