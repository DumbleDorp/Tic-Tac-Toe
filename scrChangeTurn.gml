switch(scrCheckGameResult()){
    case boardState.NoResult:
       if gameTurn == gameTurnPlayer{
          gameTurn = gameTurnPC;
          }
       else {
          gameTurn = gameTurnPlayer;
          }
       break;
    case boardState.Winner:
       if gameTurn == gameTurnPlayer{
          currentGameState = gameState.YouWin;
          }
       else {
          currentGameState = gameState.YouLose;
          }
       break;
    case boardState.Stalemate:
       currentGameState = gameState.StaleMate;
       break;
    }
