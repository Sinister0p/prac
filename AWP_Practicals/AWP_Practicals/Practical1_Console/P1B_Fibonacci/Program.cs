using System;
using System.Numerics;

// Practical 1B: Fibonacci series.
class Program
{
    static void Main()
    {
        int terms = ReadPositiveInt("Enter the number of terms for Fibonacci series: ");

        Console.WriteLine("\nFibonacci Series:");

        BigInteger first = 0;
        BigInteger second = 1;

        for (int i = 0; i < terms; i++)
        {
            Console.Write(first + " ");
            BigInteger next = first + second;
            first = second;
            second = next;
        }

        Console.WriteLine(); // For spacing
    }

    static int ReadPositiveInt(string prompt)
    {
        while (true)
        {
            Console.Write(prompt);
            string line = Console.ReadLine();

            if (line == null)
            {
                Environment.Exit(0);
            }

            int value;
            if (int.TryParse(line, out value) && value > 0)
            {
                return value;
            }

            Console.WriteLine("Invalid input. Please enter a positive whole number.");
        }
    }
}
