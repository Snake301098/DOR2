var idd;

if instance_exists(jumpmap) then with(jumpmap) instance_destroy();
instance_destroy(window_background);
instance_destroy(window_ores);

/*
if help_open=1
    {
    help_open=0;
    exit;
    }
if map_open=true
    {
    map_open=false;
    exit;
    }
if instance_exists(exit_bottom)=false then {
if (show_question("Are you sure you want to quit Darkorbit Remix v5.3?"))=true
    {
    open_save();
    save_game();
    close_save();
//    EncryptSave();
    game_end();
    }
}/*
else {
    idd:=0;
    with(exit_bottom) if idd<id then idd:=id;
    with(idd) event_perform(ev_mouse,ev_left_press);}