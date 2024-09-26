#include <iostream>
#include <vector>

std::vector<int> sieveOfEratosthenes(int n) 
{
    std::vector<bool> sieve(n + 1, true);
    sieve[0] = sieve[1] = false;

    for (int i = 2; i * i <= n; i++) 
    {
        if (sieve[i]) 
        {
            for (int j = i * i; j <= n; j += i) 
            {
                sieve[j] = false;
            }
        }
    }

    std::vector<int> primes;
    for (int i = 2; i <= n; i++) 
    {
        if (sieve[i]) 
        {
            primes.push_back(i);
        }
    }
    return primes;
}

int main() 
{
    int n = 30;
    std::vector<int> primes = sieveOfEratosthenes(n);
    
    std::cout << "Прості числа до " << n << ": ";
    for (int prime : primes) 
    {
        std::cout << prime << " ";
    }
    std::cout << std::endl;

    return 0;
}
