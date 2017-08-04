draw_sprite(sprGameBoard, 0, boardLayout.x, boardLayout.y);

// can change draw text to something else to make it look better
 switch (currentGameState){
    case gameState.YouWin:
    draw_roundrect(0,0, 10, 10, true)
       draw_text(10, 10, "YOU WIN \o/ CLICK TO PLAY AGAIN.");
       break;
    case gameState.YouLose:

       draw_text(10, 10, "YOU LOSE. CLICK TO PLAY AGAIN.");
       break;
    case gameState.StaleMate:

       draw_text(10, 10, "Draw! CLICK TO PLAY AGAIN : ) ");
       break;
    }
