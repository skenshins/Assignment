/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.jpa.internal.util.PersistenceUtilHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import poly.entity.Staff;

/**
 *
 * @author Administrator
 */
@Transactional
@Controller
@RequestMapping("/staff")
public class StaffController1 {

    @Autowired
    SessionFactory factory;

    @RequestMapping("/list")
    public String index(HttpSession session, ModelMap model, @ModelAttribute("dep") Staff dep) {
        Session session1 = factory.getCurrentSession();
        String hql = "FROM Staff";
        Query query = session1.createQuery(hql);
        List<Staff> list = query.list();
        model.addAttribute("staff", list);
        return "staff/list";
    }

    @RequestMapping("list1")
    public String report(ModelMap model) {
        Session session = factory.getCurrentSession();
        String hql = "SELECT r.staff.id, SUM(case when r.Type=1 then 1 else 0 end),SUM(case when r.Type=0 then 1 else 0 end) FROM Record r GROUP BY r.staff.id";
        Query query = session.createQuery(hql);
        List<Object[]> list = query.list();
        model.addAttribute("arrays", list);
        return "staff/list1";
    }
    
}
