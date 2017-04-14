# Docker Project
To run, ensure you have Docker installed, clone the repo, then follow these steps:

Build the image:
```bash
docker build -t sre-docker .
```

Run the image with port binding to host:
```bash
docker run -td -P sre-docker
```
For Fizz Buzz, the developer is properly checking if the number is divisible by 3 (returning Fizz) and divisible by 5 (returning Buzz) but he didn't include any logic to check first if the number that is divisible by 3 is also divisible by 5 because in that case he should be returning FizzBuzz.


