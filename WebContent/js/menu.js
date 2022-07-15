var menu=['#menu-1','#menu-2', '#menu-3','#menu-4','#menu-5','#menu-6'];

menu.forEach(showMenu);
menu.forEach(closeMenu);
console.log("ready");
$(".fb-share-button").click();

$(".search-icon").click(function() { 
    $(".search").css("visibility","visible");
    $(".search").css("width","150px");
    $(".search").css("transition","width 1s");
});

console.log($('#menu-1-drop div div ul li').find('ul').height());

function showMenu(value){
    $(value).mouseover(function(){ 
    var menu=['#menu-1','#menu-2', '#menu-3','#menu-4','#menu-5','#menu-6'];
    console.log("===========================");
        for(member of menu){
            if(member == value){
                continue;
            }
            var dropmenu = member+"-drop";
            console.log(dropmenu+" dropmenu immediatly close");
            $(dropmenu).css("transition","none");
            $(dropmenu).css("height","0px");
        }
        console.log("===========================");
        var menu = value+"-drop";
        console.log(menu+" open");
        console.log($(menu).find('div').height()+"px");
        
        $(menu).css("height",$(menu).find('div').height()+"px");
        $(menu).css("transition","height 0.5s");
    });
}

function closeMenu(value){
    $(value).mouseleave(function(){
        console.log("leave "+value);
        var menu = value+"-drop";
        $(menu).mouseleave(function () { 
            console.log(menu+" close");
            $(menu).css("height","0px");
            $(menu).css("transition","height 0.5s");
        });
    });
}

