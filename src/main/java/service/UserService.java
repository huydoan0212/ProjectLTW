package service;
import dao.UserDAO;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
public class UserService {
    private static UserService instance;
    public static  UserService getInstance(){
        if (instance == null)
            instance = new UserService();
        return instance;
    }
    public static boolean isValidEmail(String email){
        String emailPattern = "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
        Pattern pattern = Pattern.compile(emailPattern);
        Matcher matcher = pattern.matcher(email);
        return matcher.matches();
    }
    public static boolean isMatchPassword(String password, String rePassword){
        if (password.equals(rePassword)){
            return true;
        }else
            return false;
    }
    public static boolean checkEmail(String email){
       return UserDAO.checkEmail(email);
    }
    public static boolean checkUserName(String UserName){
        return UserDAO.checkUserName(UserName);
    }
    public static boolean addUser(String fullName, String email, String userName,  String password, String rePassword, String phone, String active){
        return UserDAO.addUser(fullName,email,userName,password,rePassword,phone,active);
    }

}