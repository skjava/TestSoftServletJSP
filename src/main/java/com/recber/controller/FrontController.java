/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.recber.controller;
import java.util.ArrayList;  
import java.util.HashMap;  
import java.util.List;  
import java.util.Map;  
import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.stereotype.Controller;  
import org.springframework.web.bind.annotation.ModelAttribute;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestParam;  
import org.springframework.web.servlet.ModelAndView;  
import com.recber.domain.User;  
import com.recber.services.UserService; 
/**
 *
 * @author recber
 */
@Controller  
public class FrontController {  
  
 @Autowired  
 UserService userService;  
  
 @RequestMapping("/register")  
 public ModelAndView registerUser(@ModelAttribute User user) {  
  
  List<String> faceList = new ArrayList<String>();  
  faceList.add("legal entity");  
  faceList.add("private person");  
  
  List<String> cityList = new ArrayList<String>();  
  cityList.add("Kiev");  
  cityList.add("Kharkiv");  
  cityList.add("Lviv");  
  cityList.add("Donetsk");  
  
  Map<String, List> map = new HashMap<String, List>();  
  map.put("faceList", faceList);  
  map.put("cityList", cityList);  
  return new ModelAndView("register", "map", map);  
 }  
  
 @RequestMapping("/insert")  
 public String inserData(@ModelAttribute User user) {  
  if (user != null)  
   userService.insertData(user);  
  return "redirect:/getList";  
 }  
  
 @RequestMapping("/getList")  
 public ModelAndView getUserLIst() {  
  List<User> userList = userService.getUserList();  
  return new ModelAndView("userList", "userList", userList);  
 }  
  
 @RequestMapping("/edit")  
 public ModelAndView editUser(@RequestParam String id,  
   @ModelAttribute User user) {  
  
  user = userService.getUser(id);  

  List<String> faceList = new ArrayList<String>();  
  faceList.add("legal entity");  
  faceList.add("private person"); 
  
  List<String> cityList = new ArrayList<String>();  
  cityList.add("Kiev");  
  cityList.add("Kharkiv");  
  cityList.add("Lviv");  
  cityList.add("Donetsk");
  
  Map<String, Object> map = new HashMap<String, Object>();  
  map.put("faceList", faceList);  
  map.put("cityList", cityList);  
  map.put("user", user);  
  
  return new ModelAndView("edit", "map", map);  
  
 }  
  
 @RequestMapping("/update")  
 public String updateUser(@ModelAttribute User user) {  
  userService.updateData(user);  
  return "redirect:/getList";  
  
 }  
  
 @RequestMapping("/delete")  
 public String deleteUser(@RequestParam String id) {  
  System.out.println("id = " + id);  
  userService.deleteData(id);  
  return "redirect:/getList";  
 }  
}  
