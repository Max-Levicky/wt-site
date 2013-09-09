package org.webtree.site.controllers;

import freemarker.template.TemplateException;
import org.webtree.Base.MVC.BaseController;
import org.webtree.System.Exception.MessageException;
import org.webtree.site.View.MessageView;

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

		HashMap<String, String> map = new HashMap<>();
		map.put("message", e.getMessage());
		view.setData(map);

		return view.parse();
	}
}
