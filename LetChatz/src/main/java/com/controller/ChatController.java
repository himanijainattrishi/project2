package com.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import com.model.User;

import com.service.UserService;


@Controller
public class ChatController {


   
	

    private static final Logger log = LoggerFactory.getLogger(HomeController.class);
    
    
    @RequestMapping(value={"/Chat"})
    public String openChat()
    {
    	return "Chat";
    }
   
  

    @RequestMapping(value="/application",method=RequestMethod.POST)
    public String chat()
    {
    	return "application";
    }
    
    
	 
    /*@RequestMapping(value = "/loadChatHistoryAJAX.json", method=RequestMethod.GET)
    public @ResponseBody OpResult loadChatHistory() {
        log.info("messagesPerPage = " + messagesPerPage);
        StringBuilder chatHistory = chatmessage.fetchChatHistory(messagesPerPage);
        OpResult result = new OpResult(OpResult.Status.SUCCESS, "", chatHistory.toString());
        return result;
    }*/


    /*@RequestMapping(value = "/postMessageAJAX.json", method=RequestMethod.POST)
    @Secured("ROLE_USER")
    public @ResponseBody OpResult postChatMessage(@RequestParam(value="text") String text) {
        User user = userService.getUserById(1);
        if (user == null) {
            throw new ForbiddenException();
        }
        ChatMessage chatMessage = new ChatMessage(text, user);
        chatmessage.addMessage(chatMessage);
        return new OpResult(OpResult.Status.SUCCESS);
    }

    @RequestMapping(value="/setMessagesPerPagePropAJAX.json",method=RequestMethod.POST)
    public @ResponseBody String setMessagesPerPageProp(@RequestParam(value = "limit", required = false) int limit) {
        log.info("Setting messagesPerPage to " + limit);
        setMessagePerPage(limit);
        return new OpResult(OpResult.Status.SUCCESS).toString();
    }*/


}
