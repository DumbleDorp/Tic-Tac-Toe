if (gameTurn == gameTurnPC){
    var gameDifInst = instance_find(objGameDifficulty, 0);
    // Check to see if the difficulty is NOT easy
    if (gameDifInst.gameD != gameDifficulty.Easy){
       // Check for winning move
       for (var i = 0; i < 3; i++;){
          for (var j = 0; j < 3; j++;){
             if (scrTestCellForResult(i, j, sprCross)){
                scrUseCell(i, j, sprCross);
                exit;
                }
             }
          }
       // Check for blocking move
       for (var i = 0; i < 3; i++;){
          for (var j = 0; j < 3; j++;){
             if (scrTestCellForResult(i, j, sprNought)){
                scrUseCell(i, j, sprCross);
                exit;
                }
             }
          }
       // If the center space is available use it
       if (gameCell[1, 1].occupied == false){
          scrUseCell(1, 1, sprCross);
          exit;
          }
       // Try and choose a corner if one is available
       if ((gameCell[0, 0].occupied == false)
       || (gameCell[0, 2].occupied == false)
       || (gameCell[2, 0].occupied == false)
       || (gameCell[2, 0].occupied == false)){
          while (true){
             var i = irandom(2);
             var j = irandom(2);
             if ((i != 1) && (j != 1) && !gameCell[i,j].occupied){
                // The player can win if we choose a corner opposite from one that we
                // already occupy, so only permit this move if the difficulty is medium 
                if ((gameDifInst.gameD == gameDifficulty.Hard)
                && (gameCell[i, j].occupied == true)){
                   continue;
                   }
                scrUseCell(i, j, sprCross);
                exit;
                }
             }
          }
       }
    // Easy difficulty (or no move on other difficulties) forces the PC to place randomly
    while(true){
       var i = irandom(2);
       var j = irandom(2);
       if (!gameCell[i, j].occupied){
          scrUseCell(i, j, sprCross);
          exit;
          }
       }
    }
