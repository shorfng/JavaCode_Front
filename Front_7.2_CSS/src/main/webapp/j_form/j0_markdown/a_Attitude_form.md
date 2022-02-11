## HTML5 中`<input>`标签属性

| 属性名 | 取值 | 作用 | 使用 |
|:---:|:---:|:---:|:---:|
| accept-charset | charset_list | 设置服务器可处理的表单数据字符集 | |
| action | URL | 设置数据提交至服务器的目标页面 | 当设置action=“#”时，表示提交给当前页面 |
| autocomplete | on 或 off | 设置是否启用表单的自动完成功能 |
| | application/x-www-form-urlencoded（默认值） | 将表单中数据编码为名称/值对的形式发送至服务器，标准的编码格式 | enctype作用：设置在发送表单数据HTTP字符编码格式  |
| enctype | multipart/form-data | 将表单中的数据编码为一条消息，表单中每个表单元素表示消息中的一个部分，然后传送至服务器 | 表单中含有上传组件时，设置属性值时必须的，表单上传文件一般为非文本内容 | 
| | text/plain | 将表单中的数据以纯文本方式进行编码 |发送邮件须设置该编码类型，否则会出现接收编码时混乱的情形 | 
| |  get | | 传输的数据量少，执行效率高，当提交数据时，在浏览器地址栏中可以看到提交的查询字符串 |
| method | | 设置用于发送form-data的HTTP方法，发送表单数据的HTTP请求方式 | | 
| | post | | 传输的数据量大，该方法无法通过浏览器地址栏查看提交的数据， 适合传输重要信息，在进行数据删除、添加等操作时可以设置post方法 |
| name | form_name |设置表单的名称 | |
| novalidate | novalidate | 如果使用该属性，则提交表单时不进行验证 | | 
| | _blank | | |
| | _self | | |
| target | _parent | target作用：设置在何处打开action URL |
| | _top | | |
| | _framename | | |
  	

























