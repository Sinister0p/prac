using System;
using System.Numerics;

namespace Factorial
{
    // Practical 1D: factorial of a non-negative integer.
    class Program
    {
        static void Main(string[] args)
        {
            int number;
            BigInteger fact = BigInteger.One; // BigInteger: 13! and above overflow int

            Console.WriteLine("Enter a non-negative integer:");

            // Input validation
            if (int.TryParse(Console.ReadLine(), out number) && number >= 0 && number <= 1000)
            {
                for (int i = 1; i <= number; i++)
                {
                    fact *= i;
                }

                Console.WriteLine("\nFactorial of " + number + " is: " + fact);
            }
            else
            {
                Console.WriteLine("Invalid input! Please enter a non-negative integer (0 to 1000).");
            }

            Console.ReadLine();
        }
    }
}
