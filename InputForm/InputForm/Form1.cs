using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Diagnostics;

// This form is used to trigger the console application and provide the neccesary grade input for further processing.
// If the console application is linked with the data base to provide the grade the use of this Input Form can be avoided.
namespace InputForm
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();

            dataGridView1.ColumnCount = 2;
            dataGridView1.Columns[0].Name = "GRADE";
            dataGridView1.Columns[1].Name = "INDEX";

            // SERIES 200
            string[] row = new string[] { "Grade_JSLUSD", "21" };
            dataGridView1.Rows.Add(row);
            row = new string[] { "Grade_JT", "22" };
            dataGridView1.Rows.Add(row);
            //row = new string[] { "Grade_xxx", "23" };
            //dataGridView1.Rows.Add(row);
            
            // SERIES 300
            row = new string[] { "Grade_304", "31" };
            dataGridView1.Rows.Add(row);
            row = new string[] { "Grade_301", "32" };
            dataGridView1.Rows.Add(row);
            //row = new string[] { "Grade_xxx", "33" };
            //dataGridView1.Rows.Add(row);

            // SERIES 400
            row = new string[] { "Grade_409L", "41" };
            dataGridView1.Rows.Add(row);
            row = new string[] { "Grade_430", "42" };
            dataGridView1.Rows.Add(row);
            //row = new string[] { "Grade_xxx", "43" };
            //dataGridView1.Rows.Add(row);

        }

        private void button1_Click(object sender, EventArgs e)
        {
            // The button click event is used to trigger the console application.
            // It sends the corrsponding grade token.
            Process CropGrade = new Process();
            CropGrade.StartInfo.FileName = "C:/Users/Dewal Agarwal/Desktop/Intern Project/CropShearSetPoint/CropShearSetPoint/bin/Debug/CropShearSetPoint.exe";
            CropGrade.StartInfo.Arguments = textBox1.Text;
            CropGrade.Start();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            // Displays the list of the available grades.
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            // Accepts the necessary grade input for the console application.
        }

        
    }
}
