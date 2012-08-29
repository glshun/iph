<?xml version="1.0" encoding="gb2312" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
	<xsl:template match="/">
		<html>
			<head>
				<title></title>
				<link href="../../../images/1.css" type="text/css" rel="stylesheet" />
				<script type="text/javascript" src="../../../js/library/jquery-1.7.1.min.js"></script>
				<script>
				    $(document).ready(function() {     
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
			<body style="bgcolor:red;">
							<li> Ԫ���ݱ�ʶ��Ϣ
								<ul>
									<li class="li_no_img">
										<span class="metaTitle">���ݼ���ʶ��:</span>
										<xsl:value-of select="metadata/IdInfo/datId" />
									</li>
									<li class="li_no_img">
										<span class="metaTitle">���ݼ�����:</span>
										<xsl:value-of select="metadata/IdInfo/resTitle" />
									</li>
									<xsl:if test="metadata/IdInfo/engTitle">
									<li class="li_no_img">
										<span class="metaTitle">���ݼ�Ӣ������:</span>
										<xsl:value-of select="metadata/IdInfo/engTitle" />
									</li>
									</xsl:if>
									<li class="li_no_img">
										<span class="metaTitle">���ݼ�����:</span>
										<xsl:value-of select="metadata/IdInfo/language" />
									</li>
									<li class="li_no_img">
										<span class="metaTitle">�ؼ���:</span>
										<xsl:value-of select="metadata/IdInfo/keyword" />
									</li>
									
								</ul>
							</li>
							
							<li>Ԫ����������Ϣ
								<ul>
									<li class="li_no_img">
										<span class="metaTitle">���ݼ�ժҪ:</span>
										<xsl:value-of select="metadata/ContInfo/abstract" />
									</li>
									<li>���ݼ�����
										<ul>
											<li class="li_no_img">
												<span class="metaTitle">��Ŀ����:</span>
												<xsl:value-of select="metadata/ContInfo/tpCat/cateName" />
											</li>
											<li class="li_no_img">
												<span class="metaTitle">��Ŀ����:</span>
												<xsl:value-of select="metadata/ContInfo/tpCat/cateCode" />
											</li>
											<li class="li_no_img">
												<span class="metaTitle">�����׼:</span>
												<xsl:value-of select="metadata/ContInfo/tpCat/cateStd" />
											</li>
										</ul>
									</li>
									<li>�ռ䷶Χ	
										<ul>
										<li>ƽ�淶Χ	
											<ul>
											<li class="li_no_img">
												<span class="metaTitle">���½�����:</span>
												<xsl:value-of select="metadata/ContInfo/spatialCov/planeCov/coordCov/lftBtmCoord" />
											</li>
											<li class="li_no_img">
												<span class="metaTitle">��󾭶�:</span>
												<xsl:value-of select="metadata/ContInfo/spatialCov/planeCov/coordCov/rightTopCoord" />
											</li>
											<li class="li_no_img">
												<span class="metaTitle">դ��ֱ���:</span>
												<xsl:value-of select="metadata/ContInfo/spatialCov/planeCov/gridSize" />
											</li>
											<li class="li_no_img">
												<span class="metaTitle">��Ч�����߷�ĸ:</span>
												<xsl:value-of select="metadata/ContInfo/spatialCov/planeCov/spaRes/equScale" />
											</li>
											<li class="li_no_img">
												<span class="metaTitle">����λ��:</span>
												<xsl:value-of select="metadata/ContInfo/spatialCov/planeCov/coordPoint" />
											</li>
											</ul>
										</li>
										<li>����Χ	
											<ul>
												<li class="li_no_img">
												<span class="metaTitle">�������ֵ:</span>
												<xsl:value-of select="metadata/ContInfo/spatialCov/verCov/altCov/topVer" />
												</li>
												<li class="li_no_img">
												<span class="metaTitle">������Сֵ:</span>
												<xsl:value-of select="metadata/ContInfo/spatialCov/verCov/altCov/lowVer" />
												</li>
											</ul>
											
										</li>
										
										
										</ul>
									</li>
									<li>ʱ�䷶Χ
										<ul>
											<li class="li_no_img">
												<span class="metaTitle">��ʼʱ��:</span>
													<xsl:value-of select="metadata/ContInfo/timeCov/timePeriod/begDate" />
												</li>
												<li class="li_no_img">
												<span class="metaTitle">����ʱ��:</span>
												<xsl:value-of select="metadata/ContInfo/timeCov/timePeriod/endDate" />
												</li>
											<li class="li_no_img">
												<span class="metaTitle">ʱ���:</span>
												<xsl:value-of select="metadata/ContInfo/timeCov/timePoint" />
											</li>
										</ul>
									</li>
									<li class="li_no_img">
										<span class="metaTitle">������:</span>
										<xsl:value-of select="metadata/ContInfo/dataQuant" />
									</li>
								</ul>
							
							</li>
							
							<li>��Դ��Ϣ
								<ul>
									<li class="li_no_img">
										<span class="metaTitle">����Դ����:</span>
										<xsl:value-of select="metadata/SrcInfo/srcType" />
									</li>
									<li>�۲�վ
										<ul>
											<li class="li_no_img">
												<span class="metaTitle">���:</span>
												<xsl:value-of select="metadata/SrcInfo/site/siteID" />
											</li>
											<li class="li_no_img">
												<span class="metaTitle">����:</span>
												<xsl:value-of select="metadata/SrcInfo/site/siteName" />
											</li>
											<li class="li_no_img">
												<span class="metaTitle">��γ������:</span>
												<xsl:value-of select="metadata/SrcInfo/site/siteCoordinate" />
											</li>
											<li class="li_no_img">
												<span class="metaTitle">����λ������:</span>
												<xsl:value-of select="metadata/SrcInfo/site/sitePosDesc" />
											</li>
											<li class="li_no_img">
												<span class="metaTitle">����:</span>
												<xsl:value-of select="metadata/SrcInfo/site/siteContact" />
											</li>
										</ul>
									</li>
									<li>�۲�����
										<ul>
											<li class="li_no_img">
												<span class="metaTitle">���:</span>
												<xsl:value-of select="metadata/SrcInfo/instrument/instID" />
											</li>
											<li class="li_no_img">
												<span class="metaTitle">����:</span>
												<xsl:value-of select="metadata/SrcInfo/instrument/instName" />
											</li>
											<li class="li_no_img">
												<span class="metaTitle">���:</span>
												<xsl:value-of select="metadata/SrcInfo/instrument/instCat" />
											</li>
											<li class="li_no_img">
												<span class="metaTitle">�ͺ�:</span>
												<xsl:value-of select="metadata/SrcInfo/instrument/instSpec" />
											</li>
											<li class="li_no_img">
												<span class="metaTitle">�����̸���:</span>
												<xsl:value-of select="metadata/SrcInfo/instrument/instContact" />
											</li>
										</ul>
									</li>
									<li>���ݴ�����
										<ul>
											<li class="li_no_img">
												<span class="metaTitle">��������:</span>
												<xsl:value-of select="metadata/SrcInfo/prcMethod/methodName" />
											</li>
											<li class="li_no_img">
												<span class="metaTitle">����:</span>
												<xsl:value-of select="metadata/SrcInfo/prcMethod/methodDesc" />
											</li>
											<li>ԭʼ������Դ
												<ul>
													<li class="li_no_img">
														<span class="metaTitle">ԭʼ������Դ˵��:</span>
														<xsl:value-of select="metadata/SrcInfo/prcMethod/originalSrc/originalDesc" />
													</li>
													<li class="li_no_img">
														<span class="metaTitle">��Դ��:</span>
														<xsl:value-of select="metadata/SrcInfo/prcMethod/originalSrc/originalContact" />
													</li>
												</ul>
											</li>
										</ul>
									</li>
									<xsl:if test="metadata/SrcInfo/qaDesc">
									<li class="li_no_img">
										<span class="metaTitle">������������:</span>
										<xsl:value-of select="metadata/SrcInfo/qaDesc" />
									</li>
									</xsl:if>
									<li class="li_no_img">
										<span class="metaTitle">�����ṩ��:</span>
										<xsl:value-of select="metadata/SrcInfo/prdContact" />
									</li>
								</ul>
							</li>
							
							<li>�ַ���Ϣ
								<ul>
									<li>���ݴ洢
										<ul>
											<li class="li_no_img">
												<span class="metaTitle">���ݴ洢�ṹ����:</span>
												<xsl:value-of select="metadata/DissInfo/dataStorage/dataType" />
											</li>
											<li class="li_no_img">
												<span class="metaTitle">���ݸ�ʽ:</span>
												<xsl:value-of select="metadata/DissInfo/dataStorage/dataFormat" />
											</li>
											<li class="li_no_img">
												<span class="metaTitle">���ݸ�ʽ�汾:</span>
												<xsl:value-of select="metadata/DissInfo/dataStorage/formatVersion" />
											</li>
										</ul>
									</li>
									<li>���ݷ��ʷ���
										<ul>
											<li class="li_no_img">
												<span class="metaTitle">��������:</span>
												<xsl:value-of select="metadata/DissInfo/serviceInfo/serviceType" />
											</li>
											<li>�������
												<ul>
												
												</ul>
											</li>
											<li class="li_no_img">
												<span class="metaTitle">���ݷ��ʷּ�:</span>
												<xsl:value-of select="metadata/DissInfo/serviceInfo/accessClass" />
											</li>
										</ul>
									</li>
									<li class="li_no_img">
										<span class="metaTitle">����ʹ��:</span>
										<xsl:value-of select="metadata/DissInfo/useDesc" />
									</li>
									<li>֪ʶ��Ȩ
										<ul>
											<li class="li_no_img">
												<span class="metaTitle">���ݲ�Ȩ˵��:</span>
												<xsl:value-of select="metadata/DissInfo/copyRight/copyRightDesc" />
											</li>
											<li class="li_no_img">
												<span class="metaTitle">�������÷�ʽ˵��:</span>
												<xsl:value-of select="metadata/DissInfo/copyRight/citation" />
											</li>
										</ul>
									</li>
									<li class="li_no_img">
										<span class="metaTitle">���ݷַ���:</span>
										<xsl:value-of select="metadata/DissInfo/dissContact" />
									</li>
								</ul>
							</li>
							
							<li>Ԫ����������Ϣ
								<ul>
									<li class="li_no_img">
										<span class="metaTitle">Ԫ���ݱ�ʾ��:</span>
										<xsl:value-of select="metadata/MdDesp/mdId" />
									</li>
									<li class="li_no_img">
										<span class="metaTitle">Ԫ����ά����:</span>
										<xsl:value-of select="metadata/MdDesp/MdContact" />
									</li>
									<li class="li_no_img">
										<span class="metaTitle">Ԫ���ݸ�������:</span>
										<xsl:value-of select="metadata/MdDesp/mdDateUpd" />
									</li>
								</ul>
							</li>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
