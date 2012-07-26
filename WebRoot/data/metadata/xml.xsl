<?xml version="1.0" encoding="gb2312" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
	<xsl:template match="/">
		<html>
			<head>
				<title></title>
				<link href="../../../images/1.css" type="text/css" rel="stylesheet" />
				<script type="text/javascript"
					src="../../../js/library/jquery-1.7.1.min.js">
				</script>	
					<script>
				    $(document).ready(function () {     
				           //����ʱ�����Ӳ˵�       
				       $('li ul').hide();       
				            //�������Ӳ˵�ʱ���ָ�����Ŀͼ��  
				            $('li').css({'cursor': 'default', 'list-style-image': 'none',' font-weight':'normal' });        
				              $('li:not(:has(ul))').css({'cursor': 'default', 'list-style-image': 'none' });  
				           //�����Ӳ˵�ʱ���ָ�����Ŀͼ�� 
				              $('li:has(ul)').css({ 'cursor': 'pointer', 'list-style-image': 'url(../../../images/plus.gif)' }); 
				              //�������Ӳ˵�����   
				          $('li:has(ul)').click(function (event) {       
				                   if (this == event.target) {           
				                            if ($(this).children().is(':hidden')) {                                                                     
				                                $(this).css('list-style-image', 'url(../../../images/minus.gif)').children().show();                            
									      } else {  
						                    $(this).css('list-style-image', 'url(../../../images/plus.gif)').children().hide();  
				                          }   
				                   }
				                   })
				          })
    </script>
    <style>
     .li_no_img{height:30px;list-style-type:none;}
     .metaTitle{font-weight:bold; width:100px;}
    </style>
			</head>
			<body style="bgcolor=red">
				<xsl:for-each select="/metadata">
							<li>
								��ϸ��Ϣ
								<ul>
									<li class="li_no_img">
										<span class="metaTitle">���ݼ�����:</span>
										<xsl:value-of select="name" />
									</li>
									<li class="li_no_img">
										<span class="metaTitle">�ؼ���:</span><xsl:value-of select="keys" />
									</li>
									<li class="li_no_img">
										<span class="metaTitle">���ݼ�ժҪ:</span>
										<xsl:value-of select="zhaiyao" />
									</li>
									<li class="li_no_img">
										<span class="metaTitle">���ݼ�����:</span><xsl:value-of select="yuzhong" />
									</li>
									<li class="li_no_img">
										<span class="metaTitle">���ݼ��ַ�:</span><xsl:value-of select="zifu" />
									</li>
									<li class="li_no_img">
										<span class="metaTitle">Ŀ��:</span><xsl:value-of select="mudi" />
									</li>
									<li class="li_no_img">
										<span class="metaTitle">��ʾ����:</span><xsl:value-of select="biaoshi" />
									</li>																				
									<li class="li_no_img">																													
										<span class="metaTitle">���ݼ���ʽ����:</span><xsl:value-of select="geshiname" />
									</li>
									<li class="li_no_img">
										<span class="metaTitle"> ���ݼ���ʽ�汾:</span><xsl:value-of select="geshiversion" />
									</li>
									<li class="li_no_img">
										<span class="metaTitle">��ȫ���Ʒּ�:</span><xsl:value-of select="anquan" />
									</li>									
									<li class="li_no_img">
										<span class="metaTitle">��ϵ������:</span><xsl:value-of select="contacts" />
									</li>
									<li class="li_no_img">
										<span class="metaTitle">��ϵ�˵�λ:</span><xsl:value-of select="employer" />
									</li>
									<li class="li_no_img">
										<span class="metaTitle">�绰:</span><xsl:value-of select="phone" />
									</li>
									<li class="li_no_img">
										<span class="metaTitle">����:</span><xsl:value-of select="fax" />
									</li>
								</ul>
							</li>
						</xsl:for-each>					
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
