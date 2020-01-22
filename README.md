## 利用Docker调试PHP源码


### 编译镜像


```
docker build -t liujingyu/php-src .
```

### 启动容器

```
docker run  -it --cap-add=SYS_PTRACE --security-opt seccomp:unconfined -p 5000:5000 -v $(pwd):/root/work liujingyu/php-src bash
```

### web 界面gdb（gdbgui）

```
gdbgui --host 0.0.0.0 --port 5000
```

**Notice** 界面输入命令需要绝对路径，或者启动gdbgui在可以执行命令的同级目录


### 示例

* 死循环`demo/die.php` 简单示例，目的是通过zbacktrace命令找到php死循环位置，目的适应用于大项目中，不好定位时。

* PHP 等值判断 `demo/equal.php` debug : ` ZEND_IS_EQUAL_SPEC_CV_CV_HANDLER` 操作数判断时 `LONG` 转`DOUBLE`

参考示例: https://gywbd.github.io/posts/2016/2/debug-php-source-code.html


### Docker容器命令

* 移出无用container

`docker ps -a |grep Exit |awk '{print $1}' |xargs docker stop |xargs docker rm`

* 移出无用image

`docker images |grep none|awk '{print $3}' |xargs docker rmi`


