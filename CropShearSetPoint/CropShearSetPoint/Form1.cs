using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;

namespace CropShearSetPoint
{
    public partial class Form1 : Form
    {
        private static Timer _timer = new Timer();
        
        public Form1()
        {
            InitializeComponent();
            // This section is used to calculate the time interval and trigger the timer of the windows form.
            _timer.Tick += timer1_Tick;
            _timer.Interval = 55000; 
            _timer.Start();
        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {

            string[] Input = System.IO.File.ReadAllLines(@"C:/Users/Dewal Agarwal/Desktop/Intern Project/CropShearSetPoint/Resources/Grade_ip.txt");
            textBoxHI.Text = Input[0];   // Head input for the current bar 
            textBoxTI.Text = Input[1];   // Tail input for the current bar

            string[] Output = System.IO.File.ReadAllLines(@"C:/Users/Dewal Agarwal/Desktop/Intern Project/CropShearSetPoint/Resources/Grade_op.txt");
            textBoxHO.Text = Output[0];  // Head output for the current bar
            textBoxTO.Text = Output[1];  // Tail output for the current bar

        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
