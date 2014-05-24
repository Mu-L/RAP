Rigel Automation Platform
===
接口服务平台, 能够方便地定义出对外的(HTTP)接口服务, 支持模拟接口数据, 让前/后端针对这些定义的接口并行开发, 打造以接口为中心的开发模式

    @version v0.8.2(由THX RAP v0.8.1-2014-4-18版本修改而来)
    @author  Bosn(霍雍), wangjeaf(思竹)
    @weibo   http://weibo.com/bosn, http://github.com/wangjeaf
    @mail    bosn@outlook.com, wangjeaf@gmail.com



好消息 -- RAP已经支持本地部署!
--------------------------------------
RAP已经专门开辟了[release分支](https://github.com/thx/RAP/tree/release)适用于本地部署, 因此我维护的这个项目也就失去意义了, 以后**不会再有更新**, 请大家参考[如何部署RAP服务](http://thx.alibaba-inc.com/RAP/resources/RAP-deploy/)来完成本地部署的工作, 亲测可用, 非常感谢RAP团队.


什么是RAP?
--------------------------------------
在前后端分离的开发模式下，我们通常需要定义一份`接口文档`来规范接口的具体信息。如一个请求的地址、有几个参数、参数名称及类型含义等等。`RAP` 首先方便团队录入、查看和管理这些接口文档，并通过分析结构化的文档数据，重复利用并生成自测数据、提供自测控制台等等... 大幅度提升开发效率。

[详细介绍](https://github.com/ufologist/RAP/blob/master/INTRO.md)

为什么fork了一份?
--------------------------------------
答曰: 方便本地部署自己的RAP, 暂且叫这个版本为RAP-Local吧, 或者mock server什么的(好像也有一些类似的产品)

话说在 2014年4月17号, 我逛到THX发现了这个项目, 马上就被其深深地吸引住了.

RAP项目提供了多么实在的功能啊, 对于维护接口文档的各种痛, 相信大家都懂的.

在翻看了相关文档和视频资料后, 内心那个激动啊, 但那时RAP还不能体验/安装, 是属于alibaba内部的系统.

因此只能clone下项目试着自己本地部署一套了, 迫不及待地就开始着各种折腾, 各种缺少安装文档(由于RAP是最新项目, 文档还未完善)什么的, 那都是浮云啊...

在调试本地可部署版的时候, 和 [Bosn](http://weibo.com/bosn) 做了很多交流, 最终得以正常发布, 非常感谢.

主要的修改为

1. 增加了使用(部署)手册

2. 精简了初始化的数据配置及修复了一些数据问题

3. 增强了Web项目可以带contextPath来部署

    原本只能部署在ROOT下, 但有些不方便, 例如想部署为RAPXX之类的, 就麻烦了
    
4. 修复了一些定死的URL


相关文档
--------------------------------------
- [文档中心](http://thx.alibaba-inc.com/RAP/)
- [使用手册](https://github.com/ufologist/RAP/blob/master/MANUAL.md)