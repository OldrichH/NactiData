using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NactiData
{
    public class App
    {
        private double SetValue()
        {
            String UserInput = Console.ReadLine();
            double validatedValue;

            while (!Double.TryParse(UserInput, out validatedValue))
            {
                Console.WriteLine("Zadaná hodnota není číslo. Musíte zadat číslo!");
                UserInput = Console.ReadLine();
            }
            return validatedValue;
        }
        public void Execute()
        {
            Console.WriteLine("Zadejte první číslo prosím.");
            double a = this.SetValue();
            Console.WriteLine("Zadejte druhé číslo prosím.");
            double b = this.SetValue();
            Console.WriteLine("Zadejte třetí číslo prosím.");
            double c = this.SetValue();

            Calculator calc = new Calculator(a, b, c);

            Console.WriteLine("Součet všech 3 čísel: " + calc.Addition());
            Console.WriteLine("Součin všech 3 čísel: " + calc.Multiplication());
            Console.WriteLine("Součet prvních dvou čísel dělený třemi: " + calc.AddAndDivide());
        }
    }
}
