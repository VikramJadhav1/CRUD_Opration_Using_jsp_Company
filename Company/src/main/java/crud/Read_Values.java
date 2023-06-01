package crud;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.example.DB_Connection;
import com.example.User_Bean;



public class Read_Values {


	public static void main(String[] args) {
		Read_Values obj_Read_Values =	new Read_Values();
		obj_Read_Values.get_values();	
	}

	public List<User_Bean> get_values() {
		List<User_Bean> list = new ArrayList<User_Bean>();
		DB_Connection obj_DB_Connection= new DB_Connection();
		Connection connection=obj_DB_Connection.get_Connection();
		java.sql.PreparedStatement pstmt = null;		   
		ResultSet res = null ;



		try {
			String query = "select * from employee";
			pstmt =  connection.prepareStatement(query);
			res = pstmt.executeQuery();			     
			while(res.next()) {				    	  
				User_Bean obj_User_Bean = new User_Bean();

				obj_User_Bean.setEmp_id(res.getString("emp_id"));
				obj_User_Bean.setEmp_name(res.getString("emp_name"));
				obj_User_Bean.setDepartment(res.getString("department"));
				obj_User_Bean.setSalary(res.getString("salary"));
				obj_User_Bean.setExp(res.getString("exp"));
				obj_User_Bean.setAdress(res.getString("address"));    	 
				list.add(obj_User_Bean);

			}			     
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}