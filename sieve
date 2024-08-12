static void sieve(int n, boolean[] primes){
        for(int i = 2; i * i <= n; i++){
            if(!primes[i]){
                for(int j = i*2; j <= n; j+=i){
                    primes[j] = true;
                }
            }
        }
        
        for(int i = 2; i <= n; i++){
            if(!primes[i]){
                System.out.printf("%d ",i);
            }
        }
    }
