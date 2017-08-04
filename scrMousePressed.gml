if (currentGameState != gameState.Playing){
    scrResetGame();
    exit;
    }

 // Who's turn is it? If not the player then don't process the mouse
 if (gameTurn != gameTurnPlayer){
    exit;
    }

 // Players turn so check positions and react accordingly
 var xx, yy;
 xx = boardLayout.x;
 for (var i = 0; i < 3; i++;){
    yy = boardLayout.y;
    for (var j = 0; j < 3; j++;){
       // Check that the mouse is on the board
       if ((mouse_x >= xx) && (mouse_x < (xx + boardLayout.cellWidth))
          && (mouse_y >= yy) && (mouse_y < (yy + boardLayout.cellHeight))){
          // Check the cell at the mouse location
          if (!gameCell[i, j].occupied){
             scrUseCell(i, j, sprNought);
             }
          exit;
          }
       yy += boardLayout.cellHeight;
       }
    xx += boardLayout.cellWidth;
    }
