using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculadora_Wed
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        float resultado = 0, n1 = 0, n2 = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }
        private float menudesplegable()
        {
            if (doperaciones.SelectedIndex == 0)
            {
                resultado = n1 + n2;
            }
            else if (doperaciones.SelectedIndex == 1)
            {
                resultado = n1 - n2;
            }
            else if (doperaciones.SelectedIndex == 2)
            {
                resultado = n1 * n2;
            }
            else if (doperaciones.SelectedIndex == 3)
            {
                if (n1 == 0 || n2 == 0)
                {
                    return 0;
                }
                else 
                {
                    resultado = n1 / n2;
                }
                  
                
            }
            else if (doperaciones.SelectedIndex == 4)
            {
                resultado = (float)Math.Pow(n1, 2);    
            }
            else if (doperaciones.SelectedIndex == 5)
            {
                resultado = (float)Math.Exp(n1);       
            }
            else if (doperaciones.SelectedIndex == 6)
            {
                resultado = (float)Math.Pow(10, n1);
            }
            return resultado;
        }

        private void asignarvalores()
        {
            float.TryParse(Tnum1.Text, out n1);
            float.TryParse(Tnum2.Text, out n2);
        }
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            asignarvalores();
            Lresultado.Text = menudesplegable().ToString();
        }
    }
}