using System;

namespace Swap
{
    // Practical 2C: function (method) overloading - swap for int and float.
    class Overloading
    {
        public void swap(ref int n, ref int m)
        {
            int t = n;
            n = m;
            m = t;
        }

        public void swap(ref float f1, ref float f2)
        {
            float temp = f1;
            f1 = f2;
            f2 = temp;
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            Overloading objOverloading = new Overloading();

            int n = 10, m = 20;
            objOverloading.swap(ref n, ref m);
            Console.WriteLine("After Swapping Integers: N = " + n + "\tM = " + m);

            float f1 = 10.5f, f2 = 20.6f;
            objOverloading.swap(ref f1, ref f2);
            Console.WriteLine("After Swapping Floats: F1 = " + f1 + "\tF2 = " + f2);

            Console.ReadLine(); // Pause to view output
        }
    }
}
