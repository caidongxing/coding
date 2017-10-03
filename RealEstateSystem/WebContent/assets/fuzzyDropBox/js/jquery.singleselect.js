(function($){
	//������¼�
   $(document).click(function(event){
	   $(".singleSelect-content").hide();
   });
   $.fn.singleSelect= function(settings){     
    //Ĭ�ϲ���
    var defaultSettings = {
    	id:'',
    	width:'90%',
		valItem:'',
		txtItem:'',
		selectItem:'',
		render:null,
		changeFunction:null
    };
           
    /* �ϲ�Ĭ�ϲ�����û��Զ������ */
    settings = $.extend(defaultSettings,settings);
           
    return this.each(function(){
    	//����
		var selObject = $(this);//��ȡ��ǰ����
		var selId = selObject.attr("id");//�õ�select id����
		var valArray = new Array();//����value
		var txtArray = new Array();//����text
		var firstOption = selObject.find("option").eq(0);
		var flag = false;
		if(firstOption.val()=="tellhow"){
			flag = true;
		}
		//����ȡ�����������value��Text
		selObject.find("option").each(function(index){
			if(flag){
				if(index>0){
					//�ӵڶ��ʼ 
					valArray[index-1] = $.trim($(this).val());
					txtArray[index-1] = $.trim($(this).text());
					if($(this).attr("selected")){
						settings.selectItem = $.trim($(this).val()); 		
					}
				}				
			}else{
				valArray[index] = $.trim($(this).val());
				txtArray[index] = $.trim($(this).text());
				if($(this).attr("selected")){
					settings.selectItem = $.trim($(this).val()); 		
				}
			}
		}); 
		var selParent = selObject.parent();
		selObject.remove();//�Ƴ�select
		settings.id = selId;
		settings.valItem = valArray;
		settings.txtItem = txtArray;
		settings.render = selParent;
		//��ʼ�������б�
		$.initSingleSelect(settings);
    });	
  };  
  //�õ�ѡ�е������б�ֵ
  $.fn.getsingleSelectValue = function(){
	var $cId = this.attr("id");
	var $id = "#"+$cId+"_singleSelect_content";	
	var $selectDiv = $($id).find(".singleSelectCheckDiv_select");
	var $selectVel = $selectDiv.find(".singleSelectCheckValue");
	return $.trim($selectVel.html());
 };
  //�õ�ѡ�е������б�����
  $.fn.getsingleSelectText = function(){
    var $cId = this.attr("id");
	var $id = "#"+$cId+"_singleSelect_input";
	return $.trim($($id).val());	  
 };
 //�õ����������б��ֵ
 $.fn.getAllSingleSelectValue = function(){
	var $cId = this.attr("id");
	var valarray = new Array();
	$("#"+$cId+"_singleSelect_content .singleSelectCheckValue").each(function(index){
		valarray[index] = $.trim($(this).html());
	});
	return valarray;
 };
 //�õ����������б������
 $.fn.getAllSingleSelectText = function(){
	var $cId = this.attr("id");
	var valarray = new Array();
	$("#"+$cId+"_singleSelect_content .singleSelectCheckSpan").each(function(index){
		valarray[index] = $.trim($(this).html());
	});
	return valarray;	 
 };
 //��̬�޸ĵ�ѡ�����б��ֵ
 $.fn.changeSingleSelectContent = function(settings){
	  //Ĭ�ϲ���
    var defaultSettings = {
    	valItem:'',
		txtItem:'',
		selectItem:'',
		changeFunction:null
    };
           
    /* �ϲ�Ĭ�ϲ�����û��Զ������ */
    settings = $.extend(defaultSettings,settings);
	var $cId = this.attr("id");
	//���������ڵ�ֵ
	var selInput = $("#"+$cId+"_singleSelect_input");
	selInput.val("");
	//����б��е�����
	var $content = $("#"+$cId+"_singleSelect_content");
	$content.children().remove();
	//���ø߶�
	if(settings.valItem.length>8){
		$content.css("height",8*27);//���ø�		
	}else{
		$content.css("height",settings.valItem.length*27);//���ø�		
	}
	if(settings.selectItem!=null&&settings.selectItem!=""){
		settings.selectItem = $.trim(settings.selectItem);		
	}	
	if(settings.changeFunction==null||settings.changeFunction==""){
		var strFunc = $.trim($("#"+$cId).attr("title"));
		settings.changeFunction = strFunc;
	}
	var len = settings.valItem.length;
	var htmlArray = [];
	$.each(settings.valItem,function(i){
		var selectStr = "";
		var itemv = settings.valItem[i];
		var itemt = settings.txtItem[i];
		if(settings.selectItem!=""&&settings.selectItem!=null){
			if(itemv==settings.selectItem){
				selInput.val(itemt);
				selectStr = " singleSelectCheckDiv_select";
			}
		}
		htmlArray[i]= '<div class="singleSelectCheckDiv'+selectStr+'" onmouseenter="singleSelectItemMouseEnter(\''+$cId+'\',this,event)" onclick="singleSelectClickItem(\''+$cId+'\',this,\''+settings.changeFunction+'\')"><span class="singleSelectCheckValue" style="display:none;">'+itemv+'</span><span style="float:left;margin-left:5px;margin-top:9px;" class="singleSelectCheckSpan">'+itemt+'</span></div>';				
	});
	$content.append(htmlArray.join(""));
	//�رջ���
	$("#"+$cId).singleSelectLoaddingOff();
 };
  //��̬������ѡ�����б�
  $.fn.createSingleSelect = function(settings){
    //Ĭ�ϲ���
    var defaultSettings = {
		id:'',
    	width:'90%',
		valItem:'',
		txtItem:'',
		selectItem:'',
		render:null,
		changeFunction:null
    };       
    /* �ϲ�Ĭ�ϲ�����û��Զ������ */
    settings = $.extend(defaultSettings,settings);	
	if(settings.render==null){
		settings.render = this;		
	}	
	//��ʼ�������б�
    $.initSingleSelect(settings);
  };
  //��ʼ�������б�
  $.initSingleSelect = function(settings){	
	 if(settings.id==''||settings.render==null){return;}
	 settings.selectItem = $.trim(settings.selectItem);
	 var strFunc = "";
	 if(settings.changeFunction!=null&&settings.changeFunction!=""){
		strFunc = settings.changeFunction;
	 }
 	 var selHtml = '<div style="display:none;" id="'+settings.id+'" title="'+strFunc+'"></div><div style="margin-left:2px;"><div class="singleSelect-loader" id="'+settings.id+'_singleSelect_loader">��ݼ�����...</div><input type="text" class="singleSelect-input" style="width:'+settings.width+'" id="'+settings.id+'_singleSelect_input" onkeyup="singleSelectInputKeyUp(\''+settings.id+'\',this,event)"/><div class="singleSelect-img" id="'+settings.id+'_singleSelect_img" onclick="singleSelectContentShow(\''+settings.id+'\',event)"/></div>';	
	 settings.render.append(selHtml);//�滻�µ�
	 var selHeight = 0;
	 if(settings.valItem.length>8){
	 	selHeight = 8*27;		
	 }else{
		selHeight = settings.valItem.length*27;	
	 }
	 var selInput = $("#"+settings.id+"_singleSelect_input");
	 var cWidth = selInput.width()+24;//�����б�Ŀ�
	 var htmlArray = [];
	 htmlArray[0] = '<div class="singleSelect-content" id="'+ settings.id+'_singleSelect_content" style="height:'+selHeight+'px;width:'+cWidth+'px;">';
	 var len = settings.valItem.length;
	 $.each(settings.valItem,function(i){
		 var selectStr = "";
			var itemv = settings.valItem[i];
			var itemt = settings.txtItem[i];
			if(settings.selectItem!=""&&settings.selectItem!=null){
				if(itemv==settings.selectItem){
					selInput.val(itemt);
					selectStr = " singleSelectCheckDiv_select";
				}
			}
			htmlArray[i+1] = '<div class="singleSelectCheckDiv'+selectStr+'" onmouseenter="singleSelectItemMouseEnter(\''+settings.id+'\',this,event)" onclick="singleSelectClickItem(\''+settings.id+'\',this,\''+settings.changeFunction+'\')"><span class="singleSelectCheckValue" style="display:none;">'+itemv+'</span><span style="float:left;margin-left:5px;margin-top:9px;" class="singleSelectCheckSpan">'+itemt+'</span></div>';
	 });
	htmlArray[len+2] = "</div>";
	$("body").append(htmlArray.join(""));//չʾ����
  };
  //�����
  $.fn.singleSelectLoaddingOn = function(){
	var $cId = this.attr("id");
	var $load = $("#"+$cId+"_singleSelect_loader");//����div	
	if($load.is(":hidden")){
		var $parent = $load.parent();
		$load.css("left",$parent.offset().left);
		$load.css("top",$parent.offset().top);
		$load.css("width",$parent.width()-2);
		$load.show();	
	}
  };
   //����ر�
  $.fn.singleSelectLoaddingOff = function(){
	var $cId = this.attr("id");
	var $load = $("#"+$cId+"_singleSelect_loader");//����div
	if(!$load.is(":hidden")){
		$load.hide();	
	}
  };
  //��������б��ֵ
  $.fn.singleSelectInputClear = function(){
	var $cId = this.attr("id");
	$("#"+$cId+"_singleSelect_input").val("");
	$("#"+$cId+" .singleSelectCheckDiv").removeClass("singleSelectCheckDiv_select");
  };
  //��������б�������
  $.fn.singleSelectInputSetText = function(txt){
	  var $cId = this.attr("id");
	  var flag = false;
	  $("#"+$cId+"_singleSelect_content .singleSelectCheckDiv").removeClass("singleSelectCheckDiv_select");	
	  $("#"+$cId+"_singleSelect_content .singleSelectCheckSpan").each(function(){
		if($.trim($(this).html())==txt){
			$(this).parent().addClass("singleSelectCheckDiv_select");	
			$("#"+$cId+"_singleSelect_input").val(txt);
			flag = true;
		}													   
	  });
	  if(!flag){
			$("#"+$cId+"_singleSelect_input").val(txt);
	  }
  };
  //�����б�۽�
  $.fn.singleSelectInputFocus = function(){
	  var $cId = this.attr("id");
	  $("#"+$cId+"_singleSelect_input").focus();
  };
})(jQuery);
 //�����ťչʾ�����б�
 function singleSelectContentShow(cId,eve){
	var contentList = $("#"+cId+"_singleSelect_content");	
	if(contentList.is(":hidden")){
	 $(".singleSelect-content").hide();
	 //��ʾ
	 contentList.show();
	 var cInput = $("#"+cId+"_singleSelect_input");
	 var cLeft = cInput.offset().left;//����
	 var cTop = cInput.offset().top+cInput.outerHeight();//����
	 var cWidth = cInput.width()+24;//�����б�Ŀ�
	 contentList.css("left",cLeft);
	 contentList.css("top",cTop);
	 contentList.css("width",cWidth);
	 cInput.focus();
	}else{
	 //����	
	 contentList.hide();
	}
	var  eve = eve || window.event;
    if(eve.stopPropagation) { //W3C��ֹð�ݷ���
       eve.stopPropagation();
    } else {
       eve.cancelBubble = true; //IE��ֹð�ݷ���
    }
 }
 //�������ĳ��
 function singleSelectItemMouseEnter(id,obj,eve){
	 $("#"+id+"_singleSelect_content .singleSelectCheckDiv").removeClass("singleSelectCheckDiv_hover");										   
	 $(obj).addClass("singleSelectCheckDiv_hover");
	 var  eve = eve || window.event;
     if(eve.stopPropagation) { //W3C��ֹð�ݷ���
        eve.stopPropagation();
     } else {
        eve.cancelBubble = true; //IE��ֹð�ݷ���
     }
 }
  //��������б�ĳ��
  function singleSelectClickItem(cId,obj,func){
	  var cInput = $("#"+cId+"_singleSelect_input");
	  var cTxt = $.trim($(obj).find(".singleSelectCheckSpan").html());
   	  cInput.val(cTxt);
	  $("#"+cId+"_singleSelect_content .singleSelectCheckDiv").removeClass("singleSelectCheckDiv_select");
	  $(obj).addClass("singleSelectCheckDiv_select");
	  //�ⲿonchange�¼�
	  if(func!=null&&func!=""){
		eval(func);	
	  }	
  }
	//�ı�����������
  function singleSelectInputKeyUp(cId,obj,eve){
	    cId +="_singleSelect_content";
		var val = $.trim($(obj).val());		
		if(eve.keyCode==8){
		//ɾ��	
			if(val==""){
				$("#"+cId+" .singleSelectCheckDiv_select").removeClass("singleSelectCheckDiv_select");
			}
		}else if(eve.keyCode==37||eve.keyCode==39){
		//����			
			return;
		}else if(eve.keyCode==38){
		//����
			var $index = 0;
			var $allshowdiv = $("#"+cId+" > .singleSelectCheckDiv:visible");
			var $focusDiv = $("#"+cId).find(".singleSelectCheckDiv_hover");//��ǰ�۽���div
			if($focusDiv.html()==undefined){
				var $selectDiv = $("#"+cId).find(".singleSelectCheckDiv_select");//��ǰѡ�е�div
				if($selectDiv.html()!=undefined){
					$index = $allshowdiv.index($selectDiv)-1;	
				}					
			}else{
				$index = $allshowdiv.index($focusDiv)-1;
			}				
			var $count = $allshowdiv.size();
			if($index<$count&&$index>-1){
				$focusDiv.removeClass("singleSelectCheckDiv_hover");
				var zz = parseInt($index/8);
				$("#"+cId).scrollTop(zz*8*27);						
				$allshowdiv.eq($index).addClass("singleSelectCheckDiv_hover");
			}
			return;
		}else if(eve.keyCode==40){
		//����
			var $index = 0;
			var $allshowdiv = $("#"+cId+" > .singleSelectCheckDiv:visible");
			var $focusDiv = $("#"+cId).find(".singleSelectCheckDiv_hover");//��ǰ�۽���div
			if($focusDiv.html()==undefined){
				var $selectDiv = $("#"+cId).find(".singleSelectCheckDiv_select");//��ǰѡ�е�div
				if($selectDiv.html()!=undefined){
					$index = $allshowdiv.index($selectDiv)+1;	
				}					
			}else{
				$index = $allshowdiv.index($focusDiv)+1;
			}				
			var $count = $allshowdiv.size();
			if($index<$count&&$index>-1){
				$focusDiv.removeClass("singleSelectCheckDiv_hover");
				var zz = parseInt($index/8);
				$("#"+cId).scrollTop(zz*8*27);						
				$allshowdiv.eq($index).addClass("singleSelectCheckDiv_hover");
			}
			return;
		}else if(eve.keyCode==13){
		//�س�
			var $focusDiv = $("#"+cId).find(".singleSelectCheckDiv_hover");//��ǰ�۽���div
			if($focusDiv.html()!=undefined){
				$focusDiv.click();
			}
			return;
		}			
		//չʾ����
		var count = 0;
		var cObj = null;
		var txt = "";
		var qp = "";
		var jp = "";
		$("#"+cId+" .singleSelectCheckSpan").each(function(){
			cObj = $(this).parent();			
			txt = $(this).html().toLowerCase();
			qp = ConvertPinyin(txt);//ȫƴ
			jp = makePy(txt).toString().toLowerCase();//ȡ��������ĸ
			if(txt.indexOf(val)!=-1||qp.indexOf(val)!=-1||jp.indexOf(val)!=-1){
				cObj.show();
				count +=1;
			}else{
				cObj.hide();
			}
		 });
		//������߶�
		if(count>8){
			$("#"+cId).css("height",8*27);//���ø�		
		}else{
			$("#"+cId).css("height",count*27);//���ø�		
		}
		var cContent = $("#"+cId);
		if(cContent.is(":hidden")){//û��ʾʱ��ʾ������
			 var cLeft = $(obj).offset().left;//����
			 var cTop = $(obj).offset().top+$(obj).outerHeight();//����
			 var cWidth = $(obj).width()+24;//�����б�Ŀ�
			 cContent.css("left",cLeft);
	 		 cContent.css("top",cTop);
	 		 cContent.css("width",cWidth);
			 cContent.show();		
		}
	};