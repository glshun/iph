//性别下拉列表
gender_omCombo_datasource=[{text : '男',value : '男'}, {text : '女',value : '女'} ]
//学历下拉列表
eduBackground_omCombo_datasource=[{text : '博士',value : '01'},{text : '硕士',value : '02'}, {text : '本科',value : '03'}, {text : '本科以下',value : '04'}]
//
vocation_omCombo_datasource=[{text : '科研院所',value : '01'},{text : '教育院校',value : '02'},{text : '政府机关',value : '03'},{text : '企事业单位',value : '04'}, {text : '民间组织',value : '05'}, {text : '其他',value : '06'}]
//国家
country_omCombo_datasource=[{text : '中国',value : '86'}, {text : '美国',value : '01'}]
/**
 * 通过国家级联地区
 */
function getCityRecords() {
	var country = $('#country').omCombo('value');
	if (country == '86') {// 中国
		return [{text : '北京' , value:'110000000000'},
				{text : '天津' , value:'120000000000'},
				{text : '河北' , value:'130000000000'},
				{text : '山西' , value:'140000000000'},
				{text : '辽宁' , value:'210000000000'},
				{text : '吉林' , value:'220000000000'},
				{text : '上海' , value:'310000000000'},
				{text : '江苏' , value:'320000000000'},
				{text : '浙江' , value:'330000000000'},
				{text : '安徽' , value:'340000000000'},
				{text : '福建' , value:'350000000000'},
				{text : '江西' , value:'360000000000'},
				{text : '山东' , value:'370000000000'},
				{text : '河南' , value:'410000000000'},
				{text : '湖北' , value:'420000000000'},
				{text : '湖南' , value:'430000000000'},
				{text : '广东' , value:'440000000000'},
				{text : '广西' , value:'450000000000'},
				{text : '海南' , value:'460000000000'},
				{text : '重庆' , value:'500000000000'},
				{text : '四川' , value:'510000000000'},
				{text : '贵州' , value:'520000000000'},
				{text : '云南' , value:'530000000000'},
				{text : '西藏' , value:'540000000000'},
				{text : '陕西' , value:'610000000000'},
				{text : '甘肃' , value:'620000000000'},
				{text : '青海' , value:'630000000000'},
				{text : '宁夏' , value:'640000000000'},
				{text : '新疆' , value:'650000000000'},
				{text : '内蒙古' , value:'150000000000'},
				{text : '黑龙江' , value:'230000000000'},
				{text : '青岛市' , value:'960000000000'},
				{text : '厦门市' , value:'970000000000'},
				{text : '宁波市' , value:'980000000000'},
				{text : '大连市' , value:'990000000000'}
				];
	} else if (country == '01') {// 美国
		return [{
					'text' : '夏威夷',
					'value' : 'hawaii'
				}, {
					'text' : '佛罗里达',
					'value' : 'florida'
				}];
	} else {
		return [];
	}
}
var select_station='选择观测站'
var selected_station="已选观测站"
var select_parameter='选择参数'
var selected_parameter='已选参数'
var select_type_parameter='电离层参数'
var select_type_ionogram='电离层频高图'
var select_type_Report_scan='报表扫描图'
var select_query_type='选择查询类型'
var order_by_station='观测站'
var order_by_date='观测日期'



