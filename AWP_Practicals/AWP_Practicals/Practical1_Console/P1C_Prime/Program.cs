using System;

// Practical 1C: check whether a number is prime.
class Program
{
    static void Main()
    {
        int number = ReadInt("Enter a number to check if it is prime: ");

        if (IsPrime(number))
        {
            Console.WriteLine(number + " is a Prime Number.");
        }
        else
        {
            Console.WriteLine(number + " is NOT a Prime Number.");
        }
    }

    static bool IsPrime(int num)
    {
        if (num <= 1)
            return false;

        if (num == 2)
            return true;

        if (num % 2 == 0)
            return false;

        for (int i = 3; (long)i * i <= num; i += 2)
        {
            if (num % i == 0)
                return false;
        }

        return true;
    }

    static int ReadInt(string prompt)
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
            if (int.TryParse(line, out value))
            {
                return value;
            }

            Console.WriteLine("Invalid input. Please enter a whole number.");
        }
    }
}
