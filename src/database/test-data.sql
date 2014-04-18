INSERT INTO tb_user (name, account, password, email, is_locked_out, last_login_date, incorrect_login_attempt) values ('tester', 'test', '123456', 'test@baidu.com', 0, now(), 0);

INSERT INTO tb_role (name) VALUES ('god');
INSERT INTO tb_role (name) VALUES ('admin');
INSERT INTO tb_role (name) VALUES ('pm');
INSERT INTO tb_role (name) VALUES ('rd');
INSERT INTO tb_role (name) VALUES ('fe');
INSERT INTO tb_role (name) VALUES ('qa');


INSERT INTO tb_role_and_user (user_id, role_id) VALUES (1, 2);
INSERT INTO tb_role_and_user (user_id, role_id) VALUES (1, 5);



INSERT INTO tb_project (name, user_id, introduction) VALUES ('营销专家', 1, '营销专家项目是增值系统的一部分，该项目为客服人员提供便利的服务。');
INSERT INTO tb_project (name, user_id, introduction) VALUES ('Rigel Automation Platform', 1, 'RAP(Rigel Automation Platform)是一个提供团队协作平台并通过平台数据的转换实现从设计、开发到测试阶段部分工作自动化的系统。');
INSERT INTO tb_project (name, user_id, introduction) VALUES ('组合条件', 1, '组合条件项目是增值系统的一部分，该项目为客服人员提供便利快捷的服务。');
INSERT INTO tb_project (name, user_id, introduction) VALUES ('直销系统', 1, '百度销售系统，电子商务核心业务都通过直销完成。');
INSERT INTO tb_project (name, user_id, introduction) VALUES ('网单系统', 1, '网单系统');
INSERT INTO tb_project (name, user_id, introduction) VALUES ('盘古系统', 1, '盘古系统还在需求中...');
INSERT INTO tb_project (name, user_id, introduction) VALUES ('呼叫中心Call Center', 1, '为客服提供强大的硬件支持。');
INSERT INTO tb_project (name, user_id, introduction) VALUES ('投诉系统', 1, '及时的响应客户反馈');
INSERT INTO tb_project (name, user_id, introduction) VALUES ('支持系统', 1, '24小时全程为您服务。');

INSERT INTO tb_project_and_user (project_id, user_id) VALUES (1, 1);


INSERT INTO tb_module (project_id, name, introduction) VALUES (1, "行业分析设置", null);
INSERT INTO tb_module (project_id, name, introduction) VALUES (1, "网站建议设置", null);
INSERT INTO tb_module (project_id, name, introduction) VALUES (1, "帐户结构管理", null);
INSERT INTO tb_module (project_id, name, introduction) VALUES (1, "推广分析", null);


INSERT INTO tb_page (name, module_id, introduction) VALUES ('行业分析设置', 1, '系统管理员在此可以为各级行业设置行业概况分析，作为后续方案制作的内容模板,该页面翻页调用的URL为/industryanalysissetting/industryAnalysisSettingQuery.action');
INSERT INTO tb_page (name, module_id, introduction) VALUES ('网站建议设置', 2, '系统管理员在此可以为各级行业设置网站建议，作为后续方案制作的内容模板,该页面翻页调用的URL为/websiteadvicesetting/websiteAdviceSettingQuery.action');
INSERT INTO tb_page (name, module_id, introduction) VALUES ('账户结构管理', 3, '系统管理员在此可以为各级行业设置计划单元结构，作为后续方案制作的账户结构优化模板，该页面翻页调用的URL为/industrypresetstructuresetting/planUnitSettingQuery.action');
INSERT INTO tb_page (name, module_id, introduction) VALUES ('设置计划单元', 3, '在该页面可以为某行业设置计划单元结构，为后续方案制作时提供账户结构模板,该页面翻页调用的URL为/industrypresetstructuresetting/planUnitQuery.action');
INSERT INTO tb_page (name, module_id, introduction) VALUES ('计划分类管理', 3, '在该页面可以为某行业设置所属分类，为后续制作方案时客服选择行业提供筛选条件,该页面翻页调用的URL为/industrypresetstructuresetting/planCategoryQuery.action');
INSERT INTO tb_page (name, module_id, introduction) VALUES ('账户报表设置', 3, '该页面可以为账户报表设置分析说明内容，为后续方案制作的账户报表分析提供内容模板');
INSERT INTO tb_page (name, module_id, introduction) VALUES ('行业分析', 4, '');
INSERT INTO tb_page (name, module_id, introduction) VALUES ('数据分析', 4, '对于复选框（选中显示、否则不显示）当用户未选中时，文本参数为NULL。');
INSERT INTO tb_page (name, module_id, introduction) VALUES ('网民分析', 4, '对于复选框（选中显示、否则不显示）当用户未选中时，文本参数为空。');
INSERT INTO tb_page (name, module_id, introduction) VALUES ('网站建议', 4, '');
INSERT INTO tb_page (name, module_id, introduction) VALUES ('客户需求', 4, '');
INSERT INTO tb_page (name, module_id, introduction) VALUES ('账户分析', 4, '账户分析 /scheme/accountAnalyze.actio');


INSERT INTO tb_action (name, description, request_type, request_url, response_template) VALUES ('industryAnalysisSettingQuery', '', 1, 'industryanalysissetting/industryAnalysisSettingQuery.action', 'industryanalysissetting/industryAnalysisSetting.vm');
INSERT INTO tb_action (name, description, request_type, request_url, response_template) VALUES ('secondIndustryQuery', '二级行业级联菜单异步POST', 2, 'common/secondIndustryQuery.action', '/bcom/tradeList.cb.vm');
INSERT INTO tb_action (name, description, request_type, request_url, response_template) VALUES ('saveOrUpdateSetting', '编辑好行业分析设置后，点击添加/修改发生的POST请求', 2, 'industryanalysissetting/saveOrUpdateSetting.action', null);
INSERT INTO tb_action (name, description, request_type, request_url, response_template) VALUES ('settingContentQuery', '点击操作列中的查看/修改发生的异步POST请', 4, 'industryanalysissetting/settingContentQuery.action', 'bcom/contentWithoutEscape.cb.vm');
INSERT INTO tb_action (name, description, request_type, request_url, response_template) VALUES ('clearSetting', '点击操作列中的清空或点击批量清空时发生的POST请求', 2, 'industryanalysissetting/clearSetting.action', null);
INSERT INTO tb_action (name, description, request_type, request_url, response_template) VALUES ('industryAnalyze', '页面加载', 1, 'scheme/industryAnalyze.action', 'scheme/industryAnalyze.vm');
INSERT INTO tb_action (name, description, request_type, request_url, response_template) VALUES ('richTextUpload', 'ajax请求', 4, 'common/richTextUpload.action', 'common/richTextUpload.action');
INSERT INTO tb_action (name, description, request_type, request_url, response_template) VALUES ('stepController', '点击上一步发生的POST请求', 2, 'common/stepController.action', null);
INSERT INTO tb_action (name, description, request_type, request_url, response_template) VALUES ('convertHtmlToWord', '点击预览发生的POST异步请求', 2, 'scheme/converHtmlToWord.action', null);
INSERT INTO tb_action (name, description, request_type, request_url, response_template) VALUES ('industryAnalyzeSave', '点击保存发生的Ajax请求', 4, 'scheme/industryAnalyzeSave.action', 'bcom/reportSave.cb.vm');
INSERT INTO tb_action (name, description, request_type, request_url, response_template) VALUES ('stepController', '点击下一步发生的POST请求', 2, 'common/stepController.action', null);


INSERT INTO tb_action_and_page (action_id, page_id) VALUES (1, 1);
INSERT INTO tb_action_and_page (action_id, page_id) VALUES (2, 1);
INSERT INTO tb_action_and_page (action_id, page_id) VALUES (3, 1);
INSERT INTO tb_action_and_page (action_id, page_id) VALUES (4, 1);
INSERT INTO tb_action_and_page (action_id, page_id) VALUES (5, 1);
INSERT INTO tb_action_and_page (action_id, page_id) VALUES (6, 7);
INSERT INTO tb_action_and_page (action_id, page_id) VALUES (7, 7);
INSERT INTO tb_action_and_page (action_id, page_id) VALUES (8, 7);
INSERT INTO tb_action_and_page (action_id, page_id) VALUES (9, 7);
INSERT INTO tb_action_and_page (action_id, page_id) VALUES (10, 7);
INSERT INTO tb_action_and_page (action_id, page_id) VALUES (11, 7);

INSERT INTO tb_parameter (name, identifier, data_type, remark) VALUES ('一级行业列表', 'firstIndustryList', 'List<Map>', 'ajax查询参数');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('当前一级行业', 'curFirstIndustry', 'int');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('二级行业列表', 'secondIndustryList', 'List<Map>');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('当前二级行业', 'curSecondIndustry', 'int');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('状态列表', 'statusList', 'List<Map>');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('当前状态', 'curStatus', 'int');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('更新人列表', 'updateUserList', 'List<Map>');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('当前更新人', 'curUpdateUser', 'int');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('更新时间Start', 'beginDate', 'date');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('更新时间End', 'endDate', 'date');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('结果列表', 'industryAnalysisiSettingList', 'List<Map>');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('二级行业列表', 'tradeList', 'List<Map>');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('内容', 'content', 'String');
INSERT INTO tb_parameter (name, identifier, data_type, remark) VALUES ('是否为默认值', 'isDefault', 'boolean', '若为true读取的是默认值，而非用户保存的');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('内容', 'content', 'String');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('报告ID', 'schemeId', 'int');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('步骤标识', 'currentStep', 'String');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('行业分析-开关', 'isChecked', 'boolean');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('客户名', 'customerName', 'String');
INSERT INTO tb_parameter (name, identifier, data_type, remark) VALUES ('Word文件', 'none', 'FileStream', '将返回Word文件供用户下载');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('是否成功', 'isOk', 'boolean');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('错误消息', 'errorMsg', 'String');

INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (1, 1);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (1, 2);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (1, 3);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (1, 4);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (1, 5);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (1, 6);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (1, 7);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (1, 8);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (1, 9);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (1, 10);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (1, 11);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (2, 12);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (4, 13);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (6, 14);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (6, 15);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (6, 16);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (6, 17);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (6, 18);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (6, 19);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (9, 20);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (10, 21);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (10, 22);

INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('当前一级行业', 'curFirstIndustry', 'int');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('当前二级行业', 'curSecondIndustry', 'int');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('当前状态', 'curStatus', 'int');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('当前更新人', 'curUpdateUser', 'int');
INSERT INTO tb_parameter (name, identifier, data_type, remark) VALUES ('更新时间Start', 'beginDate', 'Date', '精确到秒');
INSERT INTO tb_parameter (name, identifier, data_type, remark) VALUES ('更新时间End', 'endDate', 'Date', '精确到秒');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('当前一级行业', 'curFirstIndustry', 'int');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('行业ID', 'industryId', 'int');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('内容', 'content', 'String');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('行业ID', 'industryId', 'int');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('行业ID列表', 'industryList', 'List<int>');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('文件', 'uploadImg', 'FileStream');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('报告ID', 'schemeId', 'int');
INSERT INTO tb_parameter (name, identifier, data_type, remark) VALUES ('步骤标识', 'currentStep', 'String', '步骤代码');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('跳转类型', 'type', 'String');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('报告ID', 'schemeId', 'int');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('报告ID', 'schemeId', 'int');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('行业分析内容', 'content', 'String');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('报告ID', 'schemeId', 'int');
INSERT INTO tb_parameter (name, identifier, data_type) VALUES ('步骤标识', 'currentStep', 'String');
INSERT INTO tb_parameter (name, identifier, data_type, remark) VALUES ('跳转类型', 'type', 'String', 'prev=上一步, next=下一步');

INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (1, 23);
INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (1, 24);
INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (1, 25);
INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (1, 26);
INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (1, 27);
INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (1, 28);
INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (2, 29);
INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (3, 30);
INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (3, 31);
INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (4, 32);
INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (5, 33);
INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (7, 34);
INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (8, 35);
INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (8, 36);
INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (9, 37);
INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (10, 38);
INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (10, 39);
INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (11, 40);
INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (11, 41);
INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (11, 42);



INSERT INTO tb_module (project_id, name, introduction) VALUES (2, "项目模块", null);
INSERT INTO tb_module (project_id, name, introduction) VALUES (2, "自动化生成", null);
INSERT INTO tb_module (project_id, name, introduction) VALUES (2, "自动化测试", null);
INSERT INTO tb_module (project_id, name, introduction) VALUES (2, "平台模块", null);
INSERT INTO tb_module (project_id, name, introduction) VALUES (2, "公共模块", null);
INSERT INTO tb_module (project_id, name, introduction) VALUES (2, "账户模块", null);

INSERT INTO tb_page (name, module_id, introduction, template) 
VALUES 
(
    '我的项目列表', 
    5, 
    '我的项目列表页面，显示所有参与的项目，主要功能是创建、编辑和删除项目。',
    'MyProjectList.vm'
);
INSERT INTO tb_page (name, module_id, introduction, template) 
VALUES 
(
    '我的项目', 
    5, 
    '查看、管理我的项目',
    'MyProject.vm'
);

INSERT INTO tb_action 
(   
    name, 
    description, 
    request_type, 
    request_url, 
    response_template
) VALUES (
    'myProjectList', 
    '查看项目列表的请求', 
    2, 
    'http://rap.baidu.com:8080/rap/project/myProjectList.action', 
    'MyProjectList.vm'
);

INSERT INTO tb_action 
(   
    name, 
    description, 
    request_type, 
    request_url, 
    response_template
) VALUES (
    'myProject', 
    '进入项目', 
    2, 
    'http://rap.baidu.com:8080/rap/project/myProject.action', 
    'MyProject.vm'
);

INSERT INTO tb_action 
(   
    name, 
    description, 
    request_type, 
    request_url, 
    response_template
) VALUES (
    'removeProject', 
    '删除项目', 
    2, 
    'http://rap.baidu.com:8080/rap/project/removeProject.action', 
    'MyProjectList.vm'
);

INSERT INTO tb_action 
(   
    name, 
    description, 
    request_type, 
    request_url, 
    response_template
) VALUES (
    'projectDetailAjax', 
    '异步获取项目数据', 
    3, 
    'http://rap.baidu.com:8080/rap/project/projectDetailAjax.action', 
    'project.cb.vm'
);

INSERT INTO tb_action 
(   
    name, 
    description, 
    request_type, 
    request_url, 
    response_template
) VALUES (
    'addOrUpdateProject', 
    '添加或保存项目', 
    3, 
    'http://rap.baidu.com:8080/rap/project/addOrUpdateProject.action', 
    'MyProjectList.vm'
);



INSERT INTO tb_action_and_page (action_id, page_id) VALUES (12, 13);
INSERT INTO tb_action_and_page (action_id, page_id) VALUES (13, 13);
INSERT INTO tb_action_and_page (action_id, page_id) VALUES (14, 13);
INSERT INTO tb_action_and_page (action_id, page_id) VALUES (15, 13);
INSERT INTO tb_action_and_page (action_id, page_id) VALUES (16, 13);


/**
 * response
 * action: myProjectList
 */
INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type
) VALUES (
	'项目列表', 
	'projectList', 
	'ListMap'
);

/**
 * request
 * action: myProject
 */
INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type
) VALUES (
	'项目ID', 
	'id', 
	'int'
);

/**
 * request
 * action: removeProject
 */
INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type
) VALUES (
	'项目ID', 
	'id', 
	'int'
);

/**
 * request 
 * action: projectDetailAjax
 */
INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type
) VALUES (
	'项目ID', 
	'id', 
	'int'
);

/**
 * request 
 * action: addOrUpdateProject
 */
INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type
) VALUES (
	'项目名称', 
	'name', 
	'String'
);
INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type
) VALUES (
	'项目介绍', 
	'introduction', 
	'String'
);
INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type,
	remark
) VALUES (
	'项目ID', 
	'id', 
	'int',
	'为0时表示添加，否则为更新项目。'
);



INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (12, 44);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (13, 45);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (14, 46);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (15, 47);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (16, 48);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (16, 49);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (16, 50);









INSERT INTO tb_action 
(   
    name, 
    description, 
    request_type, 
    request_url, 
    response_template
) VALUES (
    'myProject', 
    '查看项目具体信息', 
    2, 
    'http://rap.baidu.com:8080/rap/project/myProject.action', 
    'MyProject.vm'
);

INSERT INTO tb_action 
(   
    name, 
    description, 
    request_type, 
    request_url, 
    response_template
) VALUES (
    'myWorkspace', 
    '进入接口文档工作区', 
    2, 
    'http://rap.baidu.com:8080/rap/workspace/myWorkspace.action', 
    'MyWorkspace.vm'
);

INSERT INTO tb_action 
(   
    name, 
    description, 
    request_type, 
    request_url, 
    response_template
) VALUES (
    'myProjectList', 
    '查看其它项目', 
    2, 
    'http://rap.baidu.com:8080/rap/project/myProjectList.action', 
    'MyProjectList.vm'
);

INSERT INTO tb_action 
(   
    name, 
    description, 
    request_type, 
    request_url, 
    response_template
) VALUES (
    'autoGenerate', 
    '自动化生成', 
    2, 
    'http://rap.baidu.com:8080/rap/project/autoGenerate.action', 
    ''
);


INSERT INTO tb_action_and_page (action_id, page_id) VALUES (17, 14);
INSERT INTO tb_action_and_page (action_id, page_id) VALUES (18, 14);
INSERT INTO tb_action_and_page (action_id, page_id) VALUES (19, 14);
INSERT INTO tb_action_and_page (action_id, page_id) VALUES (20, 14);


/**
 * response 
 * action: myProject
 */

INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type
) VALUES (
	'项目ID', 
	'project.id', 
	'int'
);
INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type
) VALUES (
	'项目名称', 
	'project.name', 
	'String'
);
INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type
) VALUES (
	'创建时间', 
	'project.createDate', 
	'Date'
);
INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type
) VALUES (
	'创建人', 
	'project.user.name', 
	'int'
);
INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type
) VALUES (
	'项目介绍', 
	'project.introduction', 
	'String'
);
/**
 * request 
 * action: myProject
 */
INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type
) VALUES (
	'项目ID', 
	'id', 
	'int'
);

/**
 * request 
 * action: myWorkspace
 */
INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type
) VALUES (
	'项目ID', 
	'projectId', 
	'int'
);

/**
 * request 
 * action: autoGenerate
 */
INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type
) VALUES (
	'页面ID', 
	'pageId', 
	'int'
);

INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (17, 51);
INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (17, 52);
INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (17, 53);
INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (17, 54);
INSERT INTO tb_response_parameter_list_mapping (action_id, parameter_id) VALUES (17, 55);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (17, 56);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (18, 57);
INSERT INTO tb_request_parameter_list_mapping (action_id, parameter_id) VALUES (20, 58);

INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type
) VALUES (
	'子参数1', 
	'subId', 
	'int'
);
INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type
) VALUES (
	'子参数2', 
	'subId', 
	'int'
);
INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type
) VALUES (
	'子参数3', 
	'subId', 
	'int'
);
INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type
) VALUES (
	'子参数4', 
	'subId', 
	'int'
);
INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type
) VALUES (
	'子参数5', 
	'subId', 
	'int'
);
INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type
) VALUES (
	'子参数6', 
	'subId', 
	'int'
);
INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type
) VALUES (
	'子参数7', 
	'subId', 
	'int'
);
INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type
) VALUES (
	'子参数8', 
	'subId', 
	'int'
);
INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type
) VALUES (
	'子参数9', 
	'subId', 
	'int'
);
INSERT INTO tb_parameter 
(
	name, 
	identifier, 
	data_type
) VALUES (
	'子参数10', 
	'subId', 
	'int'
);


INSERT INTO tb_complex_parameter_list_mapping
(complex_parameter_id, parameter_id)
VALUES
(1, 59);

INSERT INTO tb_complex_parameter_list_mapping
(complex_parameter_id, parameter_id)
VALUES
(1, 60);

INSERT INTO tb_complex_parameter_list_mapping
(complex_parameter_id, parameter_id)
VALUES
(1, 61);

INSERT INTO tb_complex_parameter_list_mapping
(complex_parameter_id, parameter_id)
VALUES
(3, 62);

INSERT INTO tb_complex_parameter_list_mapping
(complex_parameter_id, parameter_id)
VALUES
(3, 63);
INSERT INTO tb_complex_parameter_list_mapping
(complex_parameter_id, parameter_id)
VALUES
(3, 64);
INSERT INTO tb_complex_parameter_list_mapping
(complex_parameter_id, parameter_id)
VALUES
(3, 65);
INSERT INTO tb_complex_parameter_list_mapping
(complex_parameter_id, parameter_id)
VALUES
(3, 66);

INSERT INTO tb_complex_parameter_list_mapping
(complex_parameter_id, parameter_id)
VALUES
(5, 67);
INSERT INTO tb_complex_parameter_list_mapping
(complex_parameter_id, parameter_id)
VALUES
(5, 68);


