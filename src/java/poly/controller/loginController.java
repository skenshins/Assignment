/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.controller;

import Bean.loginModel;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import poly.entity.User;

/**
 *
 * @author Administrator
 */
@Controller
@RequestMapping("user/login")
public class loginController {

    @RequestMapping()
    public String show() {
        return "users/login";
    }

    @RequestMapping(params = "btnLogin", method = RequestMethod.POST)
    public String check(HttpServletRequest request, ModelMap model, HttpSession session) {
        String user = request.getParameter("txtUser");
        String pass = request.getParameter("txtPass");
        loginModel lg = new loginModel();
        boolean exit = lg.checkLogin(user, pass);
        if (user.isEmpty() && pass.isEmpty()) {
            model.addAttribute("message", "Vui long nhap thong tin");
            return "users/login";
        } else if (user.equals("admin") && pass.equals("123")) {
            return "user/insert";
        } else if (exit) {
            return "index";
        } else {
            model.addAttribute("message", "loi");
            return "users/login";
        }
    }
    
}
