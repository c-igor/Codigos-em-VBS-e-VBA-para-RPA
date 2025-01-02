// Log to console
console.log(terceiroDiaUtil())


function terceiroDiaUtil() {
    var validacao
    var lenDays
    var ultimoDia
    var dataAtual = new Date()
    //console.log(dataAtual)
    //var dataAtual = new Date("Nov 04 2022 19:42:02 GMT-0300 (GMT-03:00)");

    diaAtual  = dataAtual.getDate().toString();
    diaAtual = "0" + diaAtual;
    //console.log("dia atual: ",diaAtual)

    mesDataAnterior  = (dataAtual.getMonth()).toString();
        if (mesDataAnterior.length == 1){
            mesDataAnterior = "0" + mesDataAnterior;
        }
    //console.log("mes anterior: ",mesDataAnterior)

    mesDataAtual  = (dataAtual.getMonth()+1).toString();
        if (mesDataAtual == 1){
            mesDataAtual = "0" + mesDataAtual;
        }
    
    //console.log("mes atual: ",mesDataAtual)

    anoAtual  = dataAtual.getFullYear().toString();   
    //console.log(anoAtual) 
    //mesDataAnterior  = '03'
   
    var feriados = ['01/01/'+anoAtual,'15/04/'+anoAtual,'21/04/'+anoAtual,'01/05/'+anoAtual,
    '07/09/'+anoAtual,'02/11/'+anoAtual,'15/11/'+anoAtual, '25/12/'+anoAtual,'31/12/'+anoAtual]
   
    ultimoDia = new Date(anoAtual, mesDataAtual, 0).getDate() // Ultimo dia do mês anterior
    //console.log("Ultimo dia do mês anterior",ultimoDia) 

    //fillWeek = new Array(new Date(anoAtual, mesDataAtual, 0).getDate())
    fillWeek = new Array()
    var UltimoDiaDoMes = parseFloat(new Date(anoAtual, mesDataAtual, 0).getDate())
    //console.log(UltimoDiaDoMes)

    Days = new Array(new Date(anoAtual, mesDataAtual, 0).getDate())
    //lenDays = fillWeek.length
    lenDays = UltimoDiaDoMes
    //console.log("QTD dias: ", lenDays)

    //fillWeek[0] = new Date(anoAtual, mesDataAtual, 0).getDate();
   
    Days[0] = new Date(anoAtual, mesDataAtual,0).getDay();
    //console.log("Days: ", Days[0]) 
    for (i=0;i<UltimoDiaDoMes;i++){
        fillWeek[i] = new Date(anoAtual, mesDataAnterior, i).getDate();
        Days[i] = new Date(anoAtual, mesDataAnterior,i).getDay();
        
        //console.log("dia: ",fillWeek[i], "| dia da semana: ", Days[i])
    }
    //console.log("dia: ",fillWeek[1], "| dia da semana: ", Days[1])
    //remove os finais de semana DOM = 0
    for (i=0;i<UltimoDiaDoMes;i++){
        if (Days[i]== 0){
            Days.splice(i,1)
            fillWeek.splice(i,1)
        }      
    }
    //remove os finais de semana SAB = 6
    for (i=0;i<UltimoDiaDoMes;i++){
       if (Days[i]== 6){
            Days.splice(i,1)
            fillWeek.splice(i,1)
        }     
    }
    //acrescenta o "0" na frente dos números que contem um digito
    var i;
    var j;
    for (j=0;j<UltimoDiaDoMes;j++){          
            if(fillWeek[j]< 10){
                fillWeek[j] = "0" + fillWeek[j];
            }
            else
            fillWeek[j]=fillWeek[j]//.toString()
            //console.log(fillWeek[j])
    }
    //valida com o vetor dos feriados
    var fillWeekConcatenada
    for (i=0; i<UltimoDiaDoMes;i++){
            for(j=0;j<UltimoDiaDoMes;j++){
                fillWeekConcatenada = fillWeek[j]+'/'+mesDataAtual +'/'+anoAtual
                if(feriados[i] == fillWeekConcatenada){
                    fillWeek.splice(j,1);
                 }
                 
            }
    }  
    
    //verificar variavel com os dias
    //for (j=0;j<fillWeek.length;j++){
    //console.log("1",fillWeek[j])
    //}

    //fillWeek.splice(0,0)
    
    //verificar variavel com os dias
    //for (j=0;j<fillWeek.length;j++){
    //    console.log("2",fillWeek[j])
    //}

    if (fillWeek[0] == 31 || fillWeek[0] == 30 || fillWeek[0] == 29 || fillWeek[0] == 28 || fillWeek[0] == 27){
        var x = 3;
    }
    else{
        var x = 2;
    }
        
     

    //console.log("terceiro dia util: ",fillWeek[x])
    //console.log("dia atual: ",diaAtual)

    if (diaAtual == fillWeek[x]) {
       
      /* Se validacao  = S, então terceiro dia útil*/
        validacao = "S";
        retorno = [validacao, ultimoDia, lenDays]
    }
    else {
       validacao = "N";
        retorno = [validacao]    
    }
    //console.log("Resultado: ", retorno)  
    return retorno;
}