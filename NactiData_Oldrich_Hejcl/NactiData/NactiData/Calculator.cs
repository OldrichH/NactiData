using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NactiData
{
    public class Calculator
    {
        private double ValueA { get; set; }
        private double ValueB { get; set; }
        private double ValueC { get; set; }
        public Calculator(double valA, double valB, double valc)
        {
            this.ValueA = valA; this.ValueB = valB; this.ValueC = valc;
        }

        public double Addition()
        {
            return this.ValueA + this.ValueB + this.ValueC;
        }

        public double Multiplication()
        {
            return this.ValueA * this.ValueB * this.ValueC;
        }
        public double AddAndDivide()
        {
            return (this.ValueA + this.ValueB) / 3;
        }
    }
}
