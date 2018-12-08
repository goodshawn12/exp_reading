active_buttons = 5; 
button_codes = 1,2,3,4,5;

begin;

picture {
    box { width = 200; height = 5; color = 255,255,255; }scale;
    x = 0; y = 0;
    box { width = 5; height = 20; color = 255,255,255; }choice;
    x = 0; y = 0;
}scale_pic;

begin_pcl;

int x = 0;
loop  int responses = response_manager.total_response_count(); bool rightward = false; bool leftward = false; until response_manager.total_response_count( 5 ) > 0 
begin
    loop until response_manager.total_response_count() > responses begin 
        if rightward then
            if x <= 100 then
                x = x + 1;
            end;
        elseif leftward then
            if x >= -100 then
                x = x - 1;
            end;
        end;
        scale_pic.set_part_x( 2, x );
        scale_pic.present();
    end;
    if response_manager.last_response_data().button() == 1 then 
        rightward = true;
        leftward = false;
    elseif response_manager.last_response_data().button() == 2 then
        rightward = false;
        leftward = false;
    elseif response_manager.last_response_data().button() == 3 then
        leftward = true;
        rightward = false;
    elseif response_manager.last_response_data().button() == 4 then
        leftward = false;
        rightward = false;
    end;
    responses = response_manager.total_response_count();
end;
term.print( x );    