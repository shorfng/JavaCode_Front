## HTML5 中`<input>`标签属性

| 属性名 | 取值 | 作用 | 使用 |
|:---:|:---:|:---:|:---:|
| accept | mine_type | 设置通过文件上传来提交的文件类型 | |
| alt | text | 定义图像输入的替代文本 | |
| autocomplete | on 或 off | 设置是否使用输入字段自动完成功能 | | 
| autofocus | autofocus | 设置输入字段在页面加载时是否获得焦点 | 不适用于type=“hidden” |
| checked | checked | 设置词input元素首次加载时应当被选中 | |
| disable | disable | 当input元素加载时禁止此元素 | |
| form | formname | 设置输入字段所属的一个或多个表单 | |
| formaction | URL | 覆盖表单的action属性 | 适用于type="submit"和type=“image” |
|  | application/x-www-form-urlencoded | | |
| formenctype | multipart/form-data | 覆盖表单的enctype属性 | 适用于type=“submit”和type="image" |
| | text/plain | | |
| formmethod | post / get | 覆盖表单的method属性 | 适用于type=“submit”和type=“image” | 
| formnovalidate | formnovalidate | 覆盖表单的novalidate，如果使用该属性，则提交表单时不进行验证 | |
| | _blank | | |
| | _self | | |
| formtarget | _parent | 覆盖表单的target属性，适用于type=“submit”和type=“image” | |
| | _top | | |
| | _framename | | |
| height | 像素 / % | 定义input字段的高度，适用于type=“image“ | | 
| list | datalist-id | 引用包含输入字段的预定义选项的datalist | |
| max | number / date | 设置输入字段的最大值，与min属性配合使用，创建合法值的范围 | |
| maxlength | number | 设置输入字段中的字符的最大长度 | |
| min | number / date | 设置输入字段的最小值，与max属性配合使用，创建合法值的范围 | |
| multiple | multiple | 如果使用该属性，则允许一个以上的值 | | 
| name | field_name | 定义input元素的名称 | | 
| pattern | regexp_pattern | 设置输入字段的值的模式或格式 | |
| placeholder | text | 设置帮助用户填写输入字段的提示 | |
| readonly | readonly | 设置输入字段为只读 | | 
| required | required | 指示输入字段的值时必须的 | | 
| size | number_of_char | 定义输入字段的宽度 | 表示输入框的宽度 | 
| src | URL | 定义以提交按钮形式显示的图像的URL | | 
| step | number | 设置输入字的合法数字间隔 | | 
| type | button、checkbox、file、hidden、image、password、radio、reset、submit、text | 设置input元素的类型 | | 
| value | value | 设置input元素的值 | 表示输入框的默认值 |
| width | 像素 / % | 定义input字段的宽度，适用于type=“image” | | 

