package org.webtree.Site.Controller;

import freemarker.template.TemplateException;
import org.webtree.Base.MVC.BaseController;
import org.webtree.Site.View.MessageView;
import org.webtree.System.Exception.MessageException;

import java.io.IOException;
import java.util.HashMap;

/**
 * @author lucifer
 *         Date: 30.06.12
 *         Time: 18:32
 */
public class MessageController extends BaseController {

	public String process(MessageException e) throws IOException, TemplateException {
		MessageView view = new MessageView();

		HashMap<String, String> map = new HashMap<String, String>();
		map.put("message", e.getMessage());
		view.setData(map);

		return view.parse();
	}
}
