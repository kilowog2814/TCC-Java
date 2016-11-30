package Banco;

import Classes.Compartinha;

import java.sql.ResultSet;

public class LoginCRUD extends DAO {

    private Compartinha nomeFuncionario;

    public boolean logarSistema(String login, String senha) throws Exception {
        nomeFuncionario = new Compartinha();
        ResultSet result;

        try {

            cstmt = OpenDatabase().prepareCall("{ call usp_loginFuncionario (?,?) }");
            cstmt.setString(1, login);
            cstmt.setString(2, senha);
            cstmt.execute();
            result = cstmt.getResultSet();
            if (result.next()) {
                nomeFuncionario.setNomeFuncionario(result.getString("nomeFuncionario"));
            } else {
                return false;
            }
            String status = result.getString("statusFuncionario");
            int nivel = result.getInt("codNivel");
            if (status.equals("Demitido")) {
                return false;
            } else if (nivel != 0) {
                return false;
            } else {
                return true;
            }


        } catch (Exception ex) {
            
            return false;

        } finally {
            CloseDatabase();
        }
    }
}
