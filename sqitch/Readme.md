Sqitch - Docker instructions

Simplest Way to use Sqitch in docker is

```
docker pull sqitch/sqitch
curl -L https://git.io/fAX6Z -o sqitch && chmod +x sqitch
./sqitch help
```

the second line will mount the current directory to utilise as a sqitch directory.