$("a[name='checkWeek']").click(function(){ 
if($(this).hasClass('divCheckBoxSel')){ 
$(this).removeClass('divCheckBoxSel'); 
 $(this).addClass('divCheckBoxSel'); 
}else{ 
$(this).addClass('divCheckBoxSel'); 
} 
}); 
$("a[name='RcheckWeek']").click(function(){ 
if($(this).hasClass('RdivCheckBoxSel')){ 
$(this).removeClass('RdivCheckBoxSel'); 
 $(this).addClass('RdivCheckBoxSel'); 
}else{ 
$(this).addClass('RdivCheckBoxSel'); 
} 
}); 