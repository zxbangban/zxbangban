window.onload=function(){
    var aUl=[];
    var listBox =getByClassName(document,'listBox')[0];
    for(var i=0;i<listBox.getElementsByTagName('ul').length;i++){
        aUl.push(listBox.getElementsByTagName('ul')[i]);
    }
        creatLi();
    window.onscroll=function(){
        var clienHeight = document.documentElement.clientHeight;
        var scrolTop = document.documentElement.scrollTop || document.body.scrollTop;
        var height = document.body.scrollHeight;
        if(height<= clienHeight+scrolTop+100){
            creatLi();
        }
    }
    function creatLi(){

        ajax({
            type:"GET",
            url:"pbl.json",
            dataType:"json",
            success:function(msg){
                console.log(msg);
                for(var i=0;i<20;i++){
                    for(var j=0;j<msg.length;j++){
                        var oLi =document.createElement('li');
                        oLi.innerHTML = '<div class="poster">';
                        oLi.innerHTML += ' <a href="">';
                        oLi.innerHTML += '<img src="'+msg[j].url+'" alt="">';
                        oLi.innerHTML += ' </a>';
                        oLi.innerHTML += '<p class="tit">';
                        oLi.innerHTML += '<a href=""></a>';
                        oLi.innerHTML += '</p>';
                        oLi.innerHTML += '</div>';
                        aUl.sort(function(ul1,ul2){
                            return ul1.offsetHeight-ul2.offsetHeight;
                        });
                        aUl[0].appendChild(oLi);
                    }
                }
            }
        })

    }
}









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