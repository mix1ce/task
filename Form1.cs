using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Replace
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            textBox1.Text = "qqeww rertrt uyyuyu oiioioioi saasasassdds gffggfg jhjhhjjh kklkllkkl zxzxx vbvbvv";
        }

        private void Button1_Click(object sender, EventArgs e)
        {
            String[] words = textBox1.Text.Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);
            int length = words.Length;
            int a = Decimal.ToInt32(numericUpDown1.Value);
            int b = Decimal.ToInt32(numericUpDown2.Value);
            String errmsg = "Ошибки\n";
            Boolean allright = true;

            if (length == 0)
            {
                errmsg += "Не введены слова в поле\n";
                allright = false;
            }
            else
            {
                if (a > length)
                {
                    errmsg += "Левое значение больше кол-ва слов\n";
                    allright = false;
                }
                if (b > length)
                {
                    errmsg += "Правое значение больше кол-ва слов\n";
                    allright = false;
                }
                if (b < a)
                {
                    errmsg += "Левое значение больше правого\n";
                    allright = false;
                }
            }

            textBox4.Text = "";

            if (allright)
            {
                for(int i = 0; i < a - 1; i++)
                {
                    textBox4.Text +=  words[i] + " ";
                }
                for (int i = b; i < length; i++)
                {
                    textBox4.Text +=  words[i] + " ";
                }
                for (int i = a - 1; i < b; i++)
                {
                    textBox4.Text += words[i] + " ";
                }
            }

            label2.Text = errmsg;

        }
    }
}
