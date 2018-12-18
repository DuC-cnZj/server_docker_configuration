# 博客本地测试版

## 💡 安装

```shell
git clone --depth 1 -b local https://github.com/DuC-cnZj/server_docker_configuration.git blog
```

## 🚀 启动

docker-compose up -d

## 🎃 安装须知
由于启动需要时间所以如果登陆后台出现请检查网络状态，则说明系统还在准备中，从启动到可以使用，大概需要 1min。

## 🧐 填充测试数据
> 文章测试数据一次填充60条数据。

填充测试数据，务必在启动至少一分钟后再使用该命令，因为在启动时，es 搜索引擎还没准备好，如果使用该命令时出现错误，证明系统还没启动完成。

```shell
docker-compose exec app php artisan db:seed --class=ArticleTableSeeder --force
```

es 没启动完成会出现以下提示，请安心等待
```
In Connection.php line 607:

  {"error":{"root_cause":[{"type":"index_not_found_exception","reaso
  n":"no such index","resource.type":"index_or_alias","resource.id":
  "article_index_write","index_uuid":"_na_","index":"article_index_w
  rite"}],"type":"index_not_found_exception","reason":"no such index
  ","resource.type":"index_or_alias","resource.id":"article_index_wr
  ite","index_uuid":"_na_","index":"article_index_write"},"status":4
  04}
```

## 👀 预览

http://localhost:8000/ 前台

http://localhost:8080/ 后台 账号 123456789 密码 secret

## 🤠 操作

删除 docker镜像以及相关数据文件：
```shell
docker rmi registry.cn-hangzhou.aliyuncs.com/duc-cnzj/blog_frontend:local
docker rmi registry.cn-hangzhou.aliyuncs.com/duc-cnzj/blog_backgroung:local
docker rmi registry.cn-hangzhou.aliyuncs.com/duc-cnzj/blog_app

docker volume rm blog_dbdata blog_esdata blog_redisdata
```

停止运行

```shell
docker-compose down
```




