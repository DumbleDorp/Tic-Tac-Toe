//Setup the enum for the states the game can be in
 enum gameState{
    Playing = 0,
    YouWin = 1,
    YouLose = 2,
    StaleMate = 3
    }
 currentGameState = gameState.Playing;

 // Setup some vars to control turns
 gameTurnPlayer = 0;
 gameTurnPC = 1;
 gameTurn = gameTurnPlayer;

 // Setup enum for the board status
 enum boardState{
    NoResult = 0,
    Stalemate = 1,
    Winner = 2
    }

 // Create the board layout object
 boardLayout = instance_create(0, 0, objBoardLayout);

 // Get the offset values for the board cells
 var wOffset = (boardLayout.cellWidth - sprite_get_width(sprCross)) / 2;
 var hOffset = (boardLayout.cellHeight - sprite_get_height(sprCross)) / 2;

 // Setup the game cells on the board
 var xx, yy;
 xx = boardLayout.x;
 for (var i = 0; i < 3; i++;){
    yy = boardLayout.y;
    for (var j = 0; j < 3; j++;){
       // Create an instance, accounting for the offset values
       gameCell[i, j] = instance_create(xx + wOffset, yy + hOffset, objBoardCell);
       yy += boardLayout.cellHeight;
       }
    xx += boardLayout.cellWidth;
    }
