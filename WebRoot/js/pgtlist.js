$(document).ready(function(){
	
	$('#list0').omGrid({
        //title : '观测站列表' ,
         //height : 250,
         width : '99.8%',
         method : 'POST' ,
         limit : 5, //分页显示，每页显示8条
         singleSelect : false, //出现checkbox列，可以选择同时多行记录
         colModel : [    {header:'ID', name:'gramID' ,   width:100},
                         {header:'频高图标题',name:'gramTitle',  width:200  },
                         {header:'观测站',name:'stationName'  } ,
                         {header:'类型',name:'type', width:100,renderer:function(value,rowData,rowIndex){ 
                         	if('1' == value){
	                         	return '<b> 手动 </b>'; 
                         	}
                         	if('2' == value){
	                         	return '<b>胶版</b>'; 
                         	}
                         	if('3' == value){
	                         	return '<b>数字</b>'; 
                         	}
                         	if('4' == value){
	                         	return '<b>打印</b>'; 
                         	}
                         } } ,
                         {header:'日期',name:'createDate',width:100 } ,
                         {header:'文件名',name:'gramFileName', width:100,width:'autoExpand' } 
         ],
         dataSource : 'ht/pgtlist.do' 
     });
     
     //按钮绑定删除
     $('#deletebut').omButton({
     	
     	onClick : function(){
     		var ss = $('#list0').omGrid('getSelections',true);
     		if(ss.length < 1 ){
			    at({cont:'请选择删除的记录！' , type : 'error'});
			    return;
			}else{
				var arry = new Array( ) ;
				for(var i=0 ; i<ss.length ; i++){
					arry.push(ss[i].gramID );
				}
				
				var delt = {
	                        url : 'ht/pgtdel.do',
	                        params : {ids: arry.join(";")}  ,
	                        callback : function(json){
	                            if(json.success){
	                                $('#list0').omGrid('reload');
	                                $.omMessageTip.show({
						                type:'success',
						                title:'提醒',
						                timeout : 3000 ,
						                content:'删除成功'
						            });
	                            }else{
	                                at({cont: json.info , type : 'error'});
	                            }
	                        }
	                    }
	                    //提示
	                    $.omMessageBox.confirm({
	                        title:'删除确认',
	                        content:'删除记录 '+ss.length+'条 ,你确定要这样做吗?',
	                        onClose:function(value){
	                            if(value){
	                                ajaxpost(delt);
	                            }
	                        }
	                    });
			}
     	}
     });
     
     $( "#tab1").omDialog({
            autoOpen: false,
            resizable: false ,
            width:'auto' ,
            title:'修改频高图信息'
     });
     
     $('#actionDateId').omCalendar();
     //观测站下拉框
     $('#comboStation').omCombo({
        dataSource:'ht/stationlistall.do' ,
        valueField : 'id' ,
        optionField :'name' ,
        value: 'WHA'
    }) ;
    //频高徒类型下拉框
    $('#comboPgtType').omCombo({
        dataSource:[{text:'手动',value:'1'},{text:'胶版',value:'2'},{text:'数字',value:'3'},{text:'打印',value:'4'}] ,
        valueField : 'value' ,
        optionField :'text',
        value:'1'
        
    }) ;

     $('#updatebut').omButton({
     	
     	onClick : function(){
     		var ss = $('#list0').omGrid('getSelections',true);
     		if(ss.length != 1 ){
			    at({cont:'请选择一条记录修改！' , type : 'error'});
			    return;
			}else{
				var igid = ss[0].gramID ;
				var getpgt = {
	                        url : 'ht/pgtget.do',
	                        params : {id : igid }  ,
	                        callback : function(json){
	                            if(json.success){
	                                //$('#list0').omGrid('reload');
	                            }else{
	                               	//at({cont: json.info , type : 'error'});
	                            }
                                var cd = json.createDate ;
                                $('#actionDateId').val( cd.substring(0,11) );
                                
                                $('#pgtfile').html(json.gramFileName);
	                            $('#comboStation').omCombo('value', json.stationID);
                                $('#comboPgtType').omCombo('value', json.type);
	                            //$('#actionDateId').omCalendar('setDate', new Date() );
                                //parseInt(cd.substring(0,4)),parseInt(cd.substring(5,7)),parseInt(cd.substring(8,10))
	                            $('#pgtTitleId').val(json.gramTitle) ;
	                            $( "#tab1").omDialog('open');
	                            
	                            $('#updatesavebut').omButton({
							     	onClick : function(){
							     		json.createDate = $.omCalendar.formatDate($('#actionDateId').omCalendar('getDate'), 'yy-mm-dd');
			                            json.stationID = $('#comboStation').omCombo('value');
			                            json.type = $('#comboPgtType').omCombo('value');
			                            json.gramTitle = $('#pgtTitleId').val();
			                            
							     		var updatepgt = {
								                        url : 'ht/pgtupdate.do',
								                        params : json  ,
								                        callback : function(json){
								                            if(json.success){
								                                $("#tab1").omDialog('close');
								                                $('#list0').omGrid('reload');
								                                $.omMessageTip.show({
													                type:'success',
													                title:'提醒',
													                timeout : 3000 ,
													                content:'修改成功'
													            });
								                            }else{
								                               	at({cont: json.info , type : 'error'});
								                            }
								                        }
							     		}
							     		ajaxpost(updatepgt);
							     	}
							     })
	                        }
                }
                ajaxpost(getpgt);
			}
     	}
     });
     
     
});


