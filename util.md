# 进程相关

## 查看Java进程的可执行文件路径

```shell
ps -f $(jps | awk '{print $1}')
```

