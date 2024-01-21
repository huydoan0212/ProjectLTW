package dao;

import db.JDBIConnector;
import model.User;
import org.jdbi.v3.core.Handle;
import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.core.JdbiException;

import java.time.LocalDateTime;
import java.util.Optional;


public class UserDAO {
    public static boolean isEmailExists(String email) {
        int count = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT COUNT(*) FROM users WHERE email = ?")
                        .bind(0, email)
                        .mapTo(Integer.class)
                        .one()
        );
        return count > 0;
    }

    public static boolean isUserExists(String userName) {
        int count = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT COUNT(*) FROM users WHERE username = ?")
                        .bind(0, userName)
                        .mapTo(Integer.class)
                        .one()
        );
        return count > 0;
    }

    public static boolean addUser(String username, String fullname, String email, String phone_number, String password) {
        boolean result = false;
        String insertQuery = "INSERT INTO users (role_id,username, fullname, email, phone_number, sex, address, password, created_at, status, active) " +
                "VALUES (?,?,?,?,?,?,?,?,?,?,?)";

        try (Handle handle = JDBIConnector.me().open()) {
            handle.createUpdate(insertQuery)
                    .bind(0, 2)
                    .bind(1, username)
                    .bind(2, fullname)
                    .bind(3, email)
                    .bind(4, phone_number)
                    .bind(5, "")
                    .bind(6, "")
                    .bind(7, password)
                    .bind(8, LocalDateTime.now().toString())
                    .bind(9, 1)
                    .bind(10, 1)
                    .execute();
            result = true;
        }
        return false;
    }

    public static boolean loginUser(String username, String password) {
        try {
            int count = JDBIConnector.me().withHandle(handle ->
                    handle.createQuery("SELECT COUNT(*) FROM users WHERE username = ? AND password = ?")
                            .bind(0, username)
                            .bind(1, password)
                            .mapTo(Integer.class)
                            .one()
            );

            return count > 0;
        } catch (JdbiException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean updateUser(User user) {
        boolean result = false;
        String updateQuery = "UPDATE users SET fullname = 1, phone_number = 1, sex = 1, address = 1 WHERE username = 1";
        try (Handle handle = JDBIConnector.me().open()) {
            handle.createUpdate(updateQuery)
                    .bind(0, user.getFullName())
                    .bind(1, user.getPhoneNumber())
                    .bind(2, user.getSex())
                    .bind(3, user.getAddress())
                    .execute();
            result = true;
        }
        return result;
    }

    public static User getUserByUserName(String userName) {
        Optional<User> user = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select * from users where username = ?")
                        .bind(0, userName).mapToBean(User.class).stream().findFirst());
        return user.isEmpty() ? null : user.get();
    }

    public static User getUserByUserNameAndPassword(String username, String password) {
        Optional<User> user = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select * from users where username = :username and password = :password")
                        .bind("username", username)
                        .bind("password", password).mapToBean(User.class).stream().findFirst());
        return user.isEmpty() ? null : user.get();
    }

    public static boolean isPasswordExists(String password) {
        try {
            int count = JDBIConnector.me().withHandle(handle ->
                    handle.createQuery("SELECT COUNT(*) FROM users WHERE password = ?")
                            .bind(0, password)
                            .mapTo(Integer.class)
                            .one()
            );

            return count > 0;
        } catch (JdbiException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static String getEmail(String username) {
        try {
            String email = JDBIConnector.me().withHandle(handle ->
                    handle.createQuery("SELECT email FROM users WHERE username = ?")
                            .bind(0, username)
                            .mapTo(String.class)
                            .one()
            );

            return email;
        } catch (JdbiException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean updateActiveAccount(String username) {
        try {
            int updatedRows = JDBIConnector.me().withHandle(handle ->
                    handle.createUpdate("UPDATE users SET active = true WHERE username = ?")
                            .bind(0, username)
                            .execute()
            );

            return updatedRows > 0;
        } catch (JdbiException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static int getNotActiveAccount(String username) {
        try {
            int count = JDBIConnector.me().withHandle(handle ->
                    handle.createQuery("SELECT COUNT(*) FROM users WHERE username = ? AND active = false")
                            .bind(0, username)
                            .mapTo(Integer.class)
                            .one()
            );

            return count;
        } catch (JdbiException e) {
            e.printStackTrace();
            return -1; // Lỗi sẽ -1
        }
    }

    public static boolean changePassword(String username, String newPassword) {
        try {
            int updatedRows = JDBIConnector.me().withHandle(handle ->
                    handle.createUpdate("UPDATE users SET password = ? WHERE username = ?")
                            .bind(0, newPassword)
                            .bind(1, username)
                            .execute()
            );
            return updatedRows > 0;
        } catch (JdbiException e) {
            e.printStackTrace();
            return false;
        }
    }

    private static final String SELECT_USER_SQL = "SELECT * FROM users WHERE username = :username";

    public static User getUserInfo(String username) {
        Optional<User> user = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select * from users where username = :username")
                        .bind("username", username).mapToBean(User.class).stream().findFirst());
        return user.isEmpty() ? null : user.get();
    }

    public static User getUser() {
        Optional<User> user = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select * from users")
                        .mapToBean(User.class).stream().findFirst());
        return user.isEmpty() ? null : user.get();
    }


    private static final String SELECT_USERNAME_SQL = "SELECT username FROM users WHERE username = :username";

    // Các phương thức khác của lớp DAO

    public static String getUserName(String username) {
        try {
            JDBIConnector.me().withHandle(handle ->
                    handle.createQuery(SELECT_USERNAME_SQL)
                            .bind("username", username)
                            .mapTo(String.class)
                            .findFirst()
                            .orElse(null)
            );
        } catch (JdbiException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static boolean updateUserInfomationById(String fullname, String phone_number, int id) {
        int rowsUpdated = JDBIConnector.me().withHandle(handle ->
                handle.createUpdate("UPDATE users SET fullname = ?, phone_number = ?, updated_at = ? WHERE id = ?")
                        .bind(0, fullname)
                        .bind(1, phone_number)
                        .bind(2, LocalDateTime.now().toString())
                        .bind(3, id)
                        .execute()
        );
        return rowsUpdated > 0;
    }


    public static void main(String[] args) {
        System.out.println(getUser());
    }

    public static User getUserById(int id) {
        Optional<User> user = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select * from users where id = :id")
                        .bind("id", id).mapToBean(User.class).stream().findFirst());
        return user.isEmpty() ? null : user.get();
    }

    public static boolean updateUserAddressById(String address, int id) {
        int rowsUpdated = JDBIConnector.me().withHandle(handle ->
                handle.createUpdate("UPDATE users SET address = :address WHERE id = :id")
                        .bind("address", address)
                        .bind("id", id)
                        .execute()
        );
        return rowsUpdated > 0;
    }
}







