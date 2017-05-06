#minithink
### 开发手册：http://www.kancloud.cn/chuxini/minithink
### 简介
miniThink, 一个后台快速开发框架，基于OneThink的思路启发。依赖php框架中的thinkPHP5.0版本，使用了前端框架layui以及jqadmin封装的前端模块。 封装了状态、排序、删除等常用功能，所有操作几乎全是异步，
本次发布的为1.0.0beta版，难免会存在体验不好、BUG等，欢迎朋友们提出，最后您也可为这份开源的后台框架做份做贡献。
项目发布在GitHub和码云，主要维护GitHub，欢迎朋友们Fork pull为miniThink贡献。

* * * * *
### 项目地址
> GitHub：https://github.com/chuxini/minithink

> 码云：https://git.oschina.net/chuxini/minithink
* * * * *

### 版本更新

#### V1.0.0_beta
		1、发布测试版
    > 本版本没有安装程序，使用时请将data目录中的sql导入到数据库

	
* * * * *
### 使用注意事项
    1、miniThink中并未添加OneThink中的插件机制，建议使用Composer，耦合性更低。
    2、miniThink中有模块化开发的概念，但是没有添加模块中心之类的，具体请参考章节内的详细内容
    3、在后台中需要继承System类，如果不需要走权限验证则请直接继承Controller或另写父类
    4、强烈不建议在system模块里面进行开发，请开发者创建新的模块
    