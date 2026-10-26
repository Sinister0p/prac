using System;
using System.Numerics;

// Practical 1A: obtain four int values from the user and display the product.
class Program
{
    static void Main()
    {
        Console.WriteLine("Enter four integer values:");

        // BigInteger so that the product never overflows, whatever four ints are typed.
        BigInteger product = BigInteger.One;
        string[] labels = { "first", "second", "third", "fourth" };

        for (int i = 0; i < labels.Length; i++)
        {
            int number = ReadInt("Enter " + labels[i] + " number: ");
            product *= number;
        }

        Console.WriteLine("\nThe product of the four numbers is: " + product);
    }

    static int ReadInt(string prompt)
    {
        while (true)
        {
            Console.Write(prompt);
            string line = Console.ReadLine();

            if (line == null)
            {
                Environment.Exit(0); // input stream closed
            }

            int value;
            if (int.TryParse(line, out value))
            {
                return value;
            }

            Console.WriteLine("Invalid input. Please enter a whole number.");
        }
    }
}
