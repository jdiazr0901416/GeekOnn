function newsFeedInMenu(){
    $("#M-home").popover({ template: '<div class="popover" style="width:250px; "><div class="arrow"></div><div class="popover-inner"><h3 class="popover-title text-center tituloNF"></h3><div class="popover-content text-center"><p></p></div></div></div>',trigger: "hover"});
}
function newsFeedInPerfil()
{
    $("#M-perfil").popover({ template: '<div class="popover" style="width:250px; "><div class="arrow"></div><div class="popover-inner"><h3 class="popover-title text-center tituloP"></h3><div class="popover-content text-center"><p></p></div></div></div>',trigger: "hover"});
}