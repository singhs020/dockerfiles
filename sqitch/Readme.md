Sqitch - Docker instructions

Simplest Way to use Sqitch in docker is

```
docker pull sqitch/sqitch
curl -L https://git.io/fAX6Z -o sqitch && chmod +x sqitch
./sqitch help
```

the second line will mount the current directory to utilise as a sqitch directory.

If in any case the url in the second command doesnot work, the source of the file is saved in file [prep-sqitch](./prep.sqitch.sh).

The code for the the docker project can be found [here](https://github.com/sqitchers/docker-sqitch)

More Information about sqitch project check there docs [here](https://sqitch.org/docs)