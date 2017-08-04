switch (currentGameState){
    case gameState.Playing:
       scrUpdateAI();
       break;
    case gameState.YouWin:
    case gameState.YouLose:
    case gameState.StaleMate:
       break;
    }
