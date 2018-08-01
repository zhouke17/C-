using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Collections;
using System.Text.RegularExpressions;

namespace 可编程计算器
{
    public partial class 计算器 : Form
    {

        public 计算器()
        {           
            InitializeComponent();
        }
        private List<string> list = new List<string>();//存符号
        private int index = 0;


        private void GetResult()
        {
            string exp = textBox1.Text.Trim();
            GetList(exp);//遍历式子，将式子逐个分离依次存入list

            double d = E();
            if (d < 0)
            {
                this.textBox1.Text += "=" + d.ToString("f5");//输出计算结果,精度小数点后五位
            }
            else 
            {
                this.textBox1.Text += "=" + d.ToString();
            }
        }

        private void GetList(string exp)
        {
            string temp = ""; 
            exp += "#";
            for (int i = 0; i < exp.Length; i++)//遍历表达式
            {
                if (IsNumber(exp[i]))//如果为数字，则暂时存入temp
                {
                    temp += exp[i];

                }
                else
                {
                    if (temp != "")
                    {
                        list.Add(temp);//不为数字且temp不为空，则temp暂存的值存入list
                        temp = "";
                    }
                    list.Add(exp[i].ToString());

                }
            }
        }

        private bool IsNumber(char v)//判断是否为数字                                   
        {
            return Regex.IsMatch(v.ToString(), @"(\d|\.)");
        }

        //生成产生式
        private Double E()
        {
            listBox1.Items.Add("E ->TE'");
            double temp = 0;
            //因为First（TE'）={(,i},所以当单词符号为（或者i时，使用产生式E ->TE'
            if (list[index] == "(" || IsNums(list[index]))
            {
                temp = T() + E1();//E.val = T.val + E’.val
            }
            else
            {
                listBox1.Items.Add("分析失败");
            }
           
            return temp;
        }


        private  double E1()
        {
            //因为First（E'）={+，-，ε}
            //所以当单词符号为+时，使用产生式E ->+TE'
            double temp = 0;
            if (list[index] == "+")
            {
                listBox1.Items.Add("E ->+TE'");//E’.val = T.val + E’.val
            
                index++;
                temp = T() + E1();
            }
            else if (list[index] == "-")
            {
                
                //当单词符号为-时，使用产生式E ->-TE'
                listBox1.Items.Add("E ->-TE'");
                index++;
                temp = E1() - T();
            }
            else if (list[index] == "#" || list[index] == ")")
            {
                listBox1.Items.Add("E'→ε");
                temp = 0;
            }
            else
            {
                return 0;
            }
            return temp;
        }

        private  double T()
        {
            double temp = 0;

            //因为First（T）={(,i},所以当单词符号为（或者i时，使用产生式T ->FT'
            if (list[index] == "(" || IsNums(list[index]))
            {
                listBox1.Items.Add("T ->FT'");//T.val = F.val * T’.val
                temp = F() * T1();
            }
            else
            {
                listBox1.Items.Add("分析失败");
                return 0;
            }
            return temp;
        }

        private  double T1()
        {
            //因为First（T'）={*，/，ε}
            //所以当单词符号为+时，使用产生式E ->*FT’ 
            double temp = 0;
            if (list[index] == "*")
            {
                listBox1.Items.Add("T' ->*FT'");//T’.val = F.val * T’.val
                index++;
                temp = F() * T1();
            }
            else if (list[index] == "/")
            {
                listBox1.Items.Add("T' ->/FT'");
                index++;
                double f = F();
                if (f == 0)
                { 
                    MessageBox.Show("分母不能为0");
                }
                else
                {
                    temp = T1() / f;
                }
                
            }
            else if (list[index] == "+" || list[index] == "-" || list[index] == "#" || list[index] == ")")
            {
                listBox1.Items.Add("T'→ε");
               
                temp = 1;
            }
            else
            {
                return 0;
            }
            return temp;
        }

        private double F()
        {
            //因为First（F）={(,i} 
            double temp = 0;
            if (list[index] == "(")
            {
                listBox1.Items.Add("F→（E）");//F.val = E.val
                index++;
                temp = E();
                if (list[index] == ")")
                {
                    listBox1.Items.Add("F→（E）");
                    index++;
                }
                else
                {
                    listBox1.Items.Add("分析失败");
                    return 0;
                }
            }
            else if (IsNums(list[index]))
            {
                listBox1.Items.Add("F→i");
                temp = Convert.ToDouble(list[index]);//F.val = i.lexval
                index++;
            }
            else
            {
                listBox1.Items.Add("分析失败");
                return 0;
            }
            return temp;
        }

        private bool IsNums(string s)
        {
            return Regex.IsMatch(s, @"(\d+?\.\d+?|\d+)");//是否为数字（小数或者整数）
        }

        private void button16_Click(object sender, EventArgs e)
        {
            //NewMethod();
            GetResult();

        }
        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        //后缀表达式按钮事件
        private void button21_Click(object sender, EventArgs e)
        {
            MessageBox.Show("\n\n经分析，表达式的后缀表达式为：\n    \n", "后缀表达式", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        //词法分析，转换为表达式
        private static string sc; 
        static string GetFormat(string express)
        {

            sc = Regex.Replace(express, @"(\d+?\.\d+?|\d+)", "i");
            return sc;
        }

        //“表达式”按钮事件
        private void button19_Click(object sender, EventArgs e)
        {
            string exp = textBox1.Text;
            if (Regex.IsMatch(exp, @"^\d(.+?)\d$"))  //判断输入是否符合规则  数字开始数字结束
            {
                sc = GetFormat(exp);
                MessageBox.Show("经词法分析，转化为表达式为：\n \n \n  " + sc, "转化格式", MessageBoxButtons.OK, MessageBoxIcon.Information);
                sc += " ";
            }
        }
        //“MC”清除按钮事件
        private void button23_Click(object sender, EventArgs e)
        {
            index = 0;
            listBox1.Items.Clear();
            list.Clear();
            textBox1.Text = "";
        }
        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }
        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }
        private void button2_Click(object sender, EventArgs e)
        {
            textBox1.Text += "1";
        }
        private void button3_Click(object sender, EventArgs e)
        {
            textBox1.Text += "2";
        }
        private void button4_Click(object sender, EventArgs e)
        {
            textBox1.Text += "3";
        }
        private void button8_Click(object sender, EventArgs e)
        {
            textBox1.Text += "4";
        }
        private void button9_Click(object sender, EventArgs e)
        {
            textBox1.Text += "5";
        }
        private void button10_Click(object sender, EventArgs e)
        {
            textBox1.Text += "6";
        }
        private void button12_Click(object sender, EventArgs e)
        {
            textBox1.Text += "7";
        }
        private void button13_Click(object sender, EventArgs e)
        {
            textBox1.Text += "8";
        }
        private void button14_Click(object sender, EventArgs e)
        {
            textBox1.Text += "9";
        }
        private void button1_Click(object sender, EventArgs e)
        {
            textBox1.Text += "0";
        }
        private void button6_Click(object sender, EventArgs e)
        {
            textBox1.Text += "+";
        }
        private void button7_Click(object sender, EventArgs e)
        {
            textBox1.Text += "-";
        }
        private void button11_Click(object sender, EventArgs e)
        {
            textBox1.Text += "*";
        }
        private void button15_Click(object sender, EventArgs e)
        {
            textBox1.Text += "/";
        }
        private void button18_Click(object sender, EventArgs e)
        {
            textBox1.Text += "(";
        }
        private void button17_Click(object sender, EventArgs e)
        {
            textBox1.Text += ")";
        }
        private void button5_Click(object sender, EventArgs e)
        {
            textBox1.Text += ".";
        }
        private void button20_Click(object sender, EventArgs e)
        {
            if (textBox1.Text.Length > 0)
                textBox1.Text = textBox1.Text.Remove(textBox1.Text.Length - 1, 1);       
        }       
    }
}
