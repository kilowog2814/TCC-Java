package Classes;

public class Validar {

    public boolean isCpf(String xCPF) {
        try {

            int d1, d4, xx, nCount, resto, digito1, digito2;
            String Check;
            String Separadores = "/-.";
            d1 = 0;
            d4 = 0;
            xx = 1;

            for (nCount = 0; nCount < xCPF.length() - 2; nCount++) {
                String s_aux = xCPF.substring(nCount, nCount + 1);

                if (!Separadores.contains(s_aux)) {
                    d1 = d1 + (11 - xx) * Integer.parseInt(s_aux);
                    d4 = d4 + (12 - xx) * Integer.parseInt(s_aux);
                    xx++;
                }
            }

            resto = (d1 % 11);

            if (resto < 2) {
                digito1 = 0;
            } else {
                digito1 = 11 - resto;
            }

            d4 = d4 + 2 * digito1;
            resto = (d4 % 11);

            if (resto < 2) {
                digito2 = 0;
            } else {
                digito2 = 11 - resto;
            }

            Check = String.valueOf(digito1) + String.valueOf(digito2);

            String s_aux2 = xCPF.substring(xCPF.length() - 2, xCPF.length());

            if (s_aux2.compareTo(Check) != 0) {
                return false;
            }

            return true;

        } catch (Exception e) {
            return false;
        }
    }

    public boolean isEmail(String Email) {
        boolean ValidEmail = false;
        int indexArr = Email.indexOf("@");
        if (indexArr > 0) {
            if (Email.indexOf("@", indexArr + 1) > 0) {
                return ValidEmail;
            }

            int indexDot = Email.indexOf(".", indexArr);
            if (indexDot - 1 > indexArr) {
                if (indexDot + 1 < Email.length()) {
                    String indexDot2 = Email.substring(indexDot + 1, 1);
                    if (!".".equals(indexDot2)) {
                        ValidEmail = true;
                    }
                }
            }
        }
        return ValidEmail;
    }

    public boolean isTel(String numeroTelefone) {
        return numeroTelefone.matches("\\((10)|([1-9][1-9])\\)\\s9?[6-9][0-9]{3}-[0-9]{4}");
    }

    public boolean isRg(String rg) 
    {
        
        rg = rg.replace("-", "").replace(".", "").replace(",", "");

        
        if (rg.length() == 9) {
            int[] n = new int[8];

        
            n[0] = Integer.parseInt(rg.substring(0, 1));
            n[1] = Integer.parseInt(rg.substring(1, 1));
            n[2] = Integer.parseInt(rg.substring(2, 1));
            n[3] = Integer.parseInt(rg.substring(3, 1));
            n[4] = Integer.parseInt(rg.substring(4, 1));
            n[5] = Integer.parseInt(rg.substring(5, 1));
            n[6] = Integer.parseInt(rg.substring(6, 1));
            n[7] = Integer.parseInt(rg.substring(7, 1));
            n[8] = Integer.parseInt(rg.substring(8, 1));

            //Aplica a regra de validação do RG, multiplicando cada digito por valores pré-determinados
            n[0] *= 2;
            n[1] *= 3;
            n[2] *= 4;
            n[3] *= 5;
            n[4] *= 6;
            n[5] *= 7;
            n[6] *= 8;
            n[7] *= 9;
            n[8] *= 100;

            //Valida o RG
            int somaFinal = n[0] + n[1] + n[2] + n[3] + n[4] + n[5] + n[6] + n[7] + n[8];
            if ((somaFinal % 11) == 0) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }
}