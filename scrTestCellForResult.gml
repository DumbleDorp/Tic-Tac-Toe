var i = argument0;
 var j = argument1;
 var spr = argument2;

 if (gameCell[i, j].occupied == false){
    if (gameCell[((i + 1) mod 3), j].occupied)
    && (gameCell[((i + 2) mod 3), j].occupied)
    && (gameCell[((i + 1) mod 3), j].sprite == gameCell[((i + 2) mod 3), j].sprite)
    && (gameCell[((i + 1) mod 3), j].sprite == spr){
       return true;
       }
    if (gameCell[i, ((j + 1) mod 3)].occupied)
    && (gameCell[i, ((j + 2) mod 3)].occupied)
    && (gameCell[i, ((j + 1) mod 3)].sprite == gameCell[i, ((j + 2) mod 3)].sprite)
    && (gameCell[i, ((j + 1) mod 3)].sprite == spr){
       return true;
       }
    if ((i != 1) && (j != 1)){
       if (gameCell[1, 1].occupied)
       && (gameCell[j, i].occupied)
       && (gameCell[1, 1].sprite == gameCell[j, i].sprite)
       && (gameCell[1, 1].sprite == spr){
          return true;
          }
       }
    }

 return false;
