using System;
using System.Text;

namespace CurrencyConverter
{
    // Practical 2B: INR <-> USD money conversion.
    class Program
    {
        static void Main(string[] args)
        {
            Console.OutputEncoding = Encoding.UTF8; // so the rupee sign displays correctly

            double amount, result;
            double usdRate = 83.20; // Example: 1 USD = 83.20 INR (can be updated)
            int choice;

            Console.WriteLine("Currency Converter");
            Console.WriteLine("1. INR to USD");
            Console.WriteLine("2. USD to INR");
            Console.Write("Enter your choice (1 or 2): ");

            if (!int.TryParse(Console.ReadLine(), out choice))
            {
                choice = 0;
            }

            if (choice == 1)
            {
                if (ReadAmount("Enter amount in INR: ", out amount))
                {
                    result = amount / usdRate;
                    Console.WriteLine("Equivalent USD: $" + result.ToString("0.00"));
                }
            }
            else if (choice == 2)
            {
                if (ReadAmount("Enter amount in USD: ", out amount))
                {
                    result = amount * usdRate;
                    Console.WriteLine("Equivalent INR: ₹" + result.ToString("0.00"));
                }
            }
            else
            {
                Console.WriteLine("Invalid choice.");
            }

            Console.ReadLine();
        }

        static bool ReadAmount(string prompt, out double amount)
        {
            Console.Write(prompt);

            if (double.TryParse(Console.ReadLine(), out amount) && amount >= 0)
            {
                return true;
            }

            Console.WriteLine("Invalid amount.");
            amount = 0;
            return false;
        }
    }
}
