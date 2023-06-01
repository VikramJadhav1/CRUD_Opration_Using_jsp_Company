package crud;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.example.DB_Connection;


public class InsertValues {
	public void insertValues(String emp_id,String emp_name,String department,String salary,String exp,String address) {
		DB_Connection objDB= new DB_Connection();
		Connection connection= objDB.get_Connection();

		try {

			String query="insert into employee(emp_id,emp_name,department,salary,exp,address) values(?,?,?,?,?,?)";
			PreparedStatement ps=connection.prepareStatement(query);
			ps.setString(1, emp_id);
			ps.setString(2, emp_name);
			ps.setString(3, department);
			ps.setString(4, salary);
			ps.setString(5, exp);
			ps.setString(6, address );

			ps.executeUpdate();
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}
}