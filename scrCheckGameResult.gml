for (var i = 0; i < 3; i++;){
 // Check the columns for a line of noughts/crosses
    if (gameCell[i, 0].occupied && gameCell[i, 1].occupied && gameCell[i, 2].occupied){
       if (gameCell[i, 0].sprite == gameCell[i, 1].sprite && gameCell[i, 0].sprite == gameCell[i, 2].sprite){
          return boardState.Winner;
          }
       }
 // Check rows for a line of noughts/crosses
    if (gameCell[0, i].occupied && gameCell[1, i].occupied && gameCell[2, i].occupied){
       if (gameCell[0, i].sprite == gameCell[1, i].sprite && gameCell[0, i].sprite == gameCell[2, i].sprite){
          return boardState.Winner;
          }
       }
    }

 // Check the angles
 if (gameCell[0, 0].occupied && gameCell[1, 1].occupied&& gameCell[2, 2].occupied){
    if (gameCell[0, 0].sprite == gameCell[1, 1].sprite && gameCell[0, 0].sprite == gameCell[2, 2].sprite){
       return boardState.Winner;
       }
    }
 if (gameCell[0, 2].occupied && gameCell[1, 1].occupied && gameCell[2, 0].occupied){
    if (gameCell[0, 2].sprite == gameCell[1, 1].sprite && gameCell[0, 2].sprite == gameCell[2, 0].sprite){
       return boardState.Winner;
       }
    }
 // Check for drew/no result yet
 for (var i = 0; i < 3; i++;){
    for (var j = 0; j < 3; j++;){
       if gameCell[i, j].occupied == false{
          return boardState.NoResult;
          }
       }
    }

 return boardState.Stalemate;
