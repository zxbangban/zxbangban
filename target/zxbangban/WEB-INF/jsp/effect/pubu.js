
//选项卡封装
function tabFun(aBtn,aDiv){
    for(var i=0;i<aBtn.length;i++){
        aBtn[i].index=i;
        aBtn[i].onclick=function(){
            for(var i=0;i<aBtn.length;i++){//先清空所有的样式
                aBtn[i].className='';
                aDiv[i].className='';
            }
            this.className='on';
            aDiv[this.index].className='show';
        };
    }
}
//封装ajax代码
function ajax(){
    var ajaxData = {
        type:arguments[0].type || "GET",
        url:arguments[0].url || "",
        async:arguments[0].async || "true",
        data:arguments[0].data || null,
        dataType:arguments[0].dataType || "text",
        contentType:arguments[0].contentType || "application/x-www-form-urlencoded",
        beforeSend:arguments[0].beforeSend || function(){},
        success:arguments[0].success || function(){},
        error:arguments[0].error || function(){}
    }
    ajaxData.beforeSend()
    var xhr = createxmlHttpRequest();
    xhr.responseType=ajaxData.dataType;
    xhr.open(ajaxData.type,ajaxData.url,ajaxData.async);
    xhr.setRequestHeader("Content-Type",ajaxData.contentType);
    xhr.send(convertData(ajaxData.data));
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4) {
            if(xhr.status == 200){
                ajaxData.success(xhr.response)
            }else{
                ajaxData.error()
            }
        }
    }
}

function createxmlHttpRequest() {
    if (window.ActiveXObject) {
        return new ActiveXObject("Microsoft.XMLHTTP");
    } else if (window.XMLHttpRequest) {
        return new XMLHttpRequest();
    }
}

function convertData(data){
    if( typeof data === 'object' ){
        var convertResult = "" ;
        for(var c in data){
            convertResult+= c + "=" + data[c] + "&";
        }
        convertResult=convertResult.substring(0,convertResult.length-1)
        return convertResult;
    }else{
        return data;
    }
}
//封装getByClassName代码
function getByClassName(oParent,sClassName){
    if(oParent.getElementsByClassName(sClassName)){
        return oParent.getElementsByTagName('*');
    }else{
        var aRes =[];
        var aChild = oParent.getElementsByTagName('*');
        for(var i=0;i<aChild.length;i++){
            var obj = aChild[i];
            var oTmp = obj.className.split(' ');
            for(var j=0;j<oTmp.length;j++){
                if(oTmp[j] == sClassName){
                    aRes.push(obj)
                }
            }
            return aRes;
        }
    }
}
