/**
 *首页新闻
 * */
$(document).ready(function() {	
	//列表新闻
	var indexNewsData = {
		url : 'qt/indexNewsList.do',
		params : {
			
		},
		callback : function(jsonStr) {		
			var json=eval("("+jsonStr+")");//转换为json对象 
			var divstart='<div class="rightbox3_1_text">';
			var divend='</div>';
			var divstr='';
			 divstr+=divstart;
			if (json.success) {	
			$.each(json.newsList,function(idx,item){ 
				if(idx==0){ 
				 return true;
			     } 		   
			    divstr+='<a href="#" class="a2">'+item.title+'</a><br />';		
			   	if(idx==5){
			   		divstr+=divend;
			   		divstr+=divstart;
			   	}			   			   
			
			}) 
			    divstr+=divend;			
				$('#rightbox3_1').html(divstr);
				
			}
		}
	}
	ajaxpost(indexNewsData);
	//图片新闻
	var picNewsData = {
		url : 'qt/indexPicNews.do',
		params : {
			
		},
		callback : function(json) {
			if (json.success) {						
				$('#newsBrief').html(json.newsBrief);
				$('#indexRightNewsImg').html(json.imgStr);
				$("div#indexRightNewsImg img").css({"width":"180px","height":"120px"});				
				$('#showPicNews').bind('click', function() {
				   location.href='qt/newspreview.do?newsId='+json.newsId;
				});
			}
		}
	}
	ajaxpost(picNewsData);

});
