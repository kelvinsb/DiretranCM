function mascara(o,f){
    v_obj=o
    v_fun=f
    setTimeout("execmascara()",1)
}

function execmascara(){
    v_obj.value=v_fun(v_obj.value)
}

function mrg(v){
        v=v.replace(/\D/g,"");
        v=v.replace(/(\d)(\d{4})$/,"$1.$2");
        v=v.replace(/(\d)(\d{4})$/,"$1.$2");
        v=v.replace(/(\d)(\d)$/,"$1-$2");
      return v
}
