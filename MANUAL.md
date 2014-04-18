# RAP 平台使用手册
目前文档还不是很全, 可能也比较杂乱, 请大家多多包涵...

## 本地部署 RAP 平台(J2EE Web)
**准备事项**

1. MySQL一枚, Tomcat7一只

2. 启动MySQL连上去新增数据库(Schema) -> BosnAutoPlatformDB

3. 初始化数据库

   初始化SQL放在 [src/database] 或你下载的war包(WEB-INF/classes/database)中

   通过SQL工具连接到上面你新增的数据库依次执行如下SQL:
   
   1) create-table.sql
   
   2) create-procedure.sql
   
   3) test-data.sql
   
   4) update.sql

4. 修改连接数据库配置

   配置文件在 [src/mysql.local.properties] 或你下载的war包(WEB-INF/classes/mysql.local.properties)中.

   主要是修改连接到数据库的用户名和密码
 

### 方法1: 下载war包直接部署
1. 在 [releases] 中下载最新版的RAP.war
2. 发布到tomcat7中, 启动试试

### 方法2: 自己构建war包部署
1. clone项目
2. 按照准备事项修改那些配置
3. 打个war包发布到tomcat7, 启动试试

   例如打包为RAP.war, 发布到tomcat7后访问地址为: http://localhost:8080/RAP


### 体验 RAP
如果页面打开正常, 那么就可以开始体验 RAP 平台中的功能了

登录用户: test

登录密码: 123456

登录成功后可以将Dashboard中的项目全部删掉(原来自带的示例都没办法正常使用, 数据库表 tb_project 中未初始化 project_data JSON)

接着就可以新建一个项目, 万事OK啦.


## 在接口详情中定义mock数据
RAP通过 [Mock.js] 来生成mock数据

1. 打开Mock按钮, 显示mock信息

2. 可以在变量名中定义数次, 例如 dddd|5

3. 可以在备注中定义mock占位符, 例如 @mock=@datetime

   更多用法请参考 [Mock.Random] 提供的完整方法（占位符）
   
4. 还可以参考 [rapActionSample.js]



## 与业务系统集成使用RAP中定义的接口
具体示例请参考: [rap-plugin-example.html] 或 [mock.plugin/index.htm]

可能碰到的问题

1. 不能在一个页面中同时引入2个项目的RAP插件
   例如
   ```html
   <script src="http://localhost:8080/RAP/rap.plugin.js?projectId=10"></script>
   <script src="http://localhost:8080/RAP/rap.plugin.js?projectId=11"></script>
   ```
   这样会造成报错errMsg: "no matched action"

   不过一般都不会有这样的使用场景, 每个项目都应该单独测试使用, 不会出现混合的情况


## 项目接口定义的JSON示例
保存在tb_project表的project_data字段, 具体示例请参考: [project_data_example.json]


[src/database]:https://github.com/ufologist/RAP/blob/master/src/database
[releases]:https://github.com/ufologist/RAP/releases
[src/mysql.local.properties]:https://github.com/ufologist/RAP/blob/master/src/mysql.local.properties
[Mock.js]:http://mockjs.com/
[Mock.Random]:http://mockjs.com/#Mock.Random
[rapActionSample.js]:https://github.com/ufologist/RAP/blob/master/rapActionSample.js
[rap-plugin-example.html]:https://github.com/ufologist/RAP/blob/master/rap-plugin-example.html
[mock.plugin/index.htm]:https://github.com/ufologist/RAP/blob/master/WebContent/demo/mock.plugin/index.htm
[project_data_example.json]:https://github.com/ufologist/RAP/blob/master/project_data_example.json