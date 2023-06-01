package crud;

import java.sql.Connection;
import java.sql.ResultSet;

import com.example.DB_Connection;
import com.example.User_Bean;

public class EditValues {
	public User_Bean get_values_of_employee(String emp_id) {   	 
		DB_Connection obj_DB_Connection= new DB_Connection();
		Connection connection=obj_DB_Connection.get_Connection();
		java.sql.PreparedStatement pstmt = null;		   
		ResultSet res = null ;
		User_Bean obj_User_Bean = new User_Bean();


		try {
			String query = "select * from employee where emp_id=?";
			pstmt =  connection.prepareStatement(query);
			pstmt.setString(1, emp_id);
			res = pstmt.executeQuery();			     
			while(res.next()) {				    	  


				obj_User_Bean.setEmp_id(res.getString("emp_id"));
				obj_User_Bean.setEmp_name(res.getString("emp_name"));
				obj_User_Bean.setDepartment(res.getString("department"));
				obj_User_Bean.setSalary(res.getString("salary"));
				obj_User_Bean.setExp(res.getString("exp"));
				obj_User_Bean.setAdress(res.getString("address"));    	 

			}			     
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return obj_User_Bean;
	}



	public void update_employee(User_Bean obj_User_Bean) { 
		DB_Connection obj_DB_Connection= new DB_Connection();
		Connection connection=obj_DB_Connection.get_Connection();
		java.sql.PreparedStatement pstmt = null;		   



		try {
			String query = "UPDATE employee set emp_name=?,department=?,salary=?,exp=?,address=? where emp_id=?";
			pstmt =  connection.prepareStatement(query);
			
			pstmt.setString(1,obj_User_Bean.getEmp_name());
			pstmt.setString(2,obj_User_Bean.getDepartment());
			pstmt.setString(3,obj_User_Bean.getSalary());
			pstmt.setString(4,obj_User_Bean.getExp());
			pstmt.setString(5,obj_User_Bean.getAdress());
			pstmt.setString(6,obj_User_Bean.getEmp_id());
			pstmt.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}
