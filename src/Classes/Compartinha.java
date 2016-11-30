package Classes;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class Compartinha {

    private static String nomeFuncionario;

    public String getNomeFuncionario() {
        return nomeFuncionario;
    }

    public void setNomeFuncionario(String nomeFuncionario) {
        Compartinha.nomeFuncionario = nomeFuncionario;
    }

    public String getDateTime() {
        Date hoje = new Date();
        DateFormat df = DateFormat.getDateInstance(DateFormat.FULL, new Locale("pt", "br"));
        return df.format(hoje);
    }
}
