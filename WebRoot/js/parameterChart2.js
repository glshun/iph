$(document).ready(function() {
	// 开始时间
	$('#startDate').omCalendar();
	// 截止时间
	$('#endDate').omCalendar();
	// 选择小时（00-23）
	$('#hourForChart').omCombo({ // 初始化Combo
		dataSource : hour_omCombo_datasource,
		width : 100
			// value:1,
			// multi : true
	});
	// 电离参数下拉列表
	$('input[name=parameter]').omCombo({ // 初始化Combo
		dataSource :parameter_month_omCombo_datasource,
		width : 100,
		//value:'foF2',
		onValueChange : function(target, newValue, oldValue, event) {
			 $('input[name=parameter]').focus();
			$('#para_unit').html(newValue+getUnit(newValue));
		}
	});
	var stationId = $('#stationIDV').val();
	/*
	 * 选择服务站
	 */
	$('#selectorPara').omItemSelector({
				availableTitle : select_station,
				selectedTitle : selected_station,
				dataSource : 'qt/listAllStation.do',
			/*	onItemSelect : function(itemDatas, event) {
					var stationValue = '';
					if (itemDatas.length >= 1) {
						stationValue = itemDatas[0].value
					}
					for (var i = 1; i < itemDatas.length; i++) {
						stationValue += "," + itemDatas[i].value;
					}
					$('#stationIds').attr({value : stationValue});
				},*/
				width : 350,
				height : 250

			});
	// 生成电离参数曲线图
	$("#pressParaChart2").click(function() {
		var stationIds = $('#selectorPara').omItemSelector('value');
		var parameter = $('#parameter').val();	
		var data_21= {
			url : './qt/loadParaChartDataByQujian.do',
			params : {
				startDate :$('#startDate').val(),
				endDate : $('#endDate').val(),
				paraType : parameter,
				hourStr : $('#hourForChart').val(),
				stationIDs : stationIds.toString()
			},
			callback : function(json) {
				if(json.success) {
					var chart; // 曲线图	
					chart = new Highcharts.Chart({
							chart : {
								renderTo : 'paraDataChart0',
								type : 'line',
								marginRight : 90,
								marginBottom : 25
							},
							title : {
								text : json.subtitle,// json.chartTitle
								x : -20
							},
							subtitle : {
								text : json.title,
								x : -20
							},
							xAxis : {
								categories : json.xAxis
							},
							yAxis : {
								title : {
									text : json.yAxis //+ getUnit(json.paraName)
								},
								min:0,
								plotLines : [{
											value : 0,
											width : 1,
											color : '#808080'
										}]
							},
							tooltip : {
								formatter : function() {
									return '<b>' + this.series.name
											+ '</b><br/>' + this.x + ': '
											+ this.y;
								}
							},
							legend : {
								layout : 'vertical',
								align : 'right',
								verticalAlign : 'top',
								x : -10,
								y : 100,
								borderWidth : 0
							},
							series : json.series							
							});
					}else{
					alert('error');
					}
			}
		}
		ajaxpost(data_21);
	});

});
