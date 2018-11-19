package co.itea.dao;

import java.sql.SQLException;

import javax.sql.DataSource;

import co.itea.dto.PacienteDTO;

public class PacientesDAO extends BaseDAO {
	
	public PacientesDAO(DataSource ds) {
		super(ds);
	}
	
	/**
	 * Consulta la informacion de un paciente por id de registro.
	 * @param idpaciente
	 * @return
	 * @throws Exception
	 */
	public PacienteDTO getPacienteById(Integer idpaciente) throws Exception{
		PacienteDTO resultado = null;
		int c = 1;
		StringBuffer sql = new StringBuffer();
		
		try{
			sql.append("SELECT id_paciente, nombre, apellido, genero, peso, estatura, fechanacimiento");
			sql.append(" FROM paciente");
			sql.append(" WHERE id_paciente = ?");
			
			con = ds.getConnection();
			ps = con.prepareStatement(sql.toString());
			
			ps.setInt(1, idpaciente);
			
			rs = ps.executeQuery();
			
			while(rs.next()){
				c = 1;
				resultado = new PacienteDTO();
				
				resultado.setId(rs.getInt(c++));
				resultado.setNombre(rs.getString(c++));
				resultado.setApellido(rs.getString(c++));
				resultado.setGenero(rs.getString(c++));
				resultado.setPeso(rs.getInt(c++));
				resultado.setEstatura(rs.getFloat(c++));
				resultado.setFechanacimiento(rs.getTimestamp(c++));
			}
		}catch(SQLException e){
			throw new SQLException("", e);
		}catch(Exception e){
			throw new Exception(e.toString(), e.getCause());
		}finally {
			closeConexion();
		}
		return resultado;
	}
}