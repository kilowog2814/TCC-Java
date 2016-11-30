package Banco;

import java.sql.ResultSet;


public class ClasseConexao extends DAO {


    public ResultSet chamarProcedure(String nomeProcedure) throws Exception {

        try {

            cstmt = OpenDatabase().prepareCall("{ call " + nomeProcedure + " }");
            cstmt.execute();
            rs = cstmt.getResultSet();
            return rs;

        } catch (Exception ex) {

            return null;
        }
    }

    public boolean chamarProcedureB(String nomeProcedure) throws Exception {

        try {

            cstmt = OpenDatabase().prepareCall("{ call " + nomeProcedure + " }");
            cstmt.execute();
            return true;

        } catch (Exception ex) {

            
            return false;

        } finally {

            CloseDatabase();

        }
    }
}
