package crud;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.example.DB_Connection;

public class DeleteValues {
	
		public void delete_values(String emp_id) {   	 
			DB_Connection obj_DB_Connection= new DB_Connection();
			Connection connection=obj_DB_Connection.get_Connection();
			PreparedStatement pstmt = null;		   

			try {
				String query = "DELETE from employee where emp_id=?";
				pstmt =  connection.prepareStatement(query);
				pstmt.setString(1, emp_id);
				pstmt.executeUpdate();		     
							     
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		}
}
