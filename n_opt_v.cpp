#include <iostream>
#include <vector>

bool isPrime(int num) 
{
    if (num <= 1) return false;
    for (int i = 2; i < num; i++) 
    {
        if (num % i == 0) return false;
    }
    return true;
}

std::vector<int> findPrimesNaive(int n) 
{
    std::vector<int> primes;
    for (int i = 2; i <= n; i++) 
    {
        if (isPrime(i)) 
        {
            primes.push_back(i);
        }
    }
    return primes;
}

int main() 
{
    int n = 100000;
    std::vector<int> primes = findPrimesNaive(n);
    
    std::cout << "Прості числа до " << n << ": ";
    for (int prime : primes) 
    {
        std::cout << prime << " ";
    }
    std::cout << std::endl;

    return 0;
}