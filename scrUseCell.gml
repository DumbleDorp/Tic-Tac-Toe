var i = argument0;
 var j = argument1;
 var spr = argument2;

 if ((i >= 0 && i < 3) && (j >= 0 && j < 3)){
    gameCell[i, j].occupied = true;
    gameCell[i, j].sprite = spr;
    scrChangeTurn();
    }
