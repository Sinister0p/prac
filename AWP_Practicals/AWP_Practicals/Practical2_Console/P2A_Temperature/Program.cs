using System;
using System.Text;

namespace TemperatureConversion
{
    // Practical 2A: Celsius to Fahrenheit.
    class Program
    {
        static void Main(string[] args)
        {
            Console.OutputEncoding = Encoding.UTF8; // so the degree sign displays correctly

            Console.WriteLine("Enter the Temperature in Celsius (°C):");

            double celsius;

            // Input validation
            if (double.TryParse(Console.ReadLine(), out celsius))
            {
                double fahrenheit = (celsius * 9) / 5 + 32;
                Console.WriteLine("Temperature in Fahrenheit (°F): " + fahrenheit.ToString("0.##"));
            }
            else
            {
                Console.WriteLine("Invalid input! Please enter a valid temperature.");
            }

            Console.ReadLine();
        }
    }
}
