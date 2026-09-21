% Maeve Meehan
% Due: September 20, 2026
%Description: This code plays a game of Tic Tac Toe against the computer.
%The user will be able to pick a open spot by typing its number (1-9). The
%computer will choose a random open square. The board is checked for a
%winner after every move. The user can play again after each round. The 
% user can choose to go first or let the computer go first, and can play 
% again each round. 

disp ('Welcome to Tic Tac Toe!')
startResponse = input('Would you like to play a game? (y/n): ', 's');

if startResponse == "n"
    disp ('Maybe Next Time! Goodbye!')

else
    disp ('Let the games begin!')
    playAgain= 'y';
%This loop runs the whole game everything time that the user answers y to
%play again.
    while strcmp(playAgain, 'y')
%The board is 9 squares which are numbered from left to right and top to
%bottom. I had to rearrange the numbers because the input wasn't
%correlating to the correct space. 
    board = {"1", "4", "7"; "2", "5", "8"; "3", "6", "9"};
    userSymbol = "X";
    compSymbol = "O";
    availableNumbers = {'1', '2', '3', '4', '5', '6', '7', '8', '9'};
    winner = "";
    movesLeft = 9; 
    %These are all of the possible win patterns so the code knows what to
    %check for
 winPatterns = [1 2 3; 4 5 6; 7 8 9;...
        1 4 7; 2 5 8; 3 6 9;... 
        1 5 9; 3 5 7];
 %Extra credit- ask who goes first. Will ask if you want to go first, if
 %yes will ask for your move. if not the computer will goes first and have
 %an updated board right away.
 goFirst= input('Would you like to go first? (y/n): ', 's');
 if strcmp (goFirst, 'n')
     disp ('The computer will go first with symbol "O". The user''s symbol is "X".')

     randIndex= randi(length(availableNumbers));
     compMove = availableNumbers {randIndex};
     spot = str2double (compMove);
     board{spot}= compSymbol;
     availableNumbers (strcmp(availableNumbers, compMove)) = [];
     movesLeft= movesLeft -1;
     
    disp ('Computer moved. Updated board')
    disp (board)
 else 
     disp ('Here is the board:')
     disp(board)
 end 
 %This loop helps the computer know the correct pattern. either user
 %computer, or computer user.
    while movesLeft > 0
 %This is the code for the user's turn
        userMove= (input ('Choose a number for your move: ', 's'));
        while ~ismember (userMove, availableNumbers)
            userMove= input ('That spot is taken or invalid. Choose again: ', 's');
        end  
       spot= str2double (userMove);
       board{spot}= userSymbol;
       availableNumbers (strcmp(availableNumbers, userMove))= [];
       movesLeft= movesLeft -1;
       disp('Updated board:')
       disp(board)
%This checks to see if the user has won.
for i= 1:8
    p= winPatterns (i,:);
     if strcmp(board{p(1)}, userSymbol) && strcmp(board{p(2)}, userSymbol) && strcmp(board{p(3)}, userSymbol)
        winner = 'user';
        break
    end
end
    if strcmp (winner, 'user')|| movesLeft == 0
        break
    end
%This is the computer's turn
randIndex = randi (length(availableNumbers));
compMove= availableNumbers{randIndex};
spot = str2double (compMove);
board{spot}= compSymbol;
availableNumbers (strcmp(availableNumbers, compMove)) = [];
movesLeft= movesLeft -1;

disp ('Computer moved. Updated board:')
disp (board)
%Check to see if the computer has won.
for i= 1:8
    p= winPatterns (i,:);
     if strcmp(board{p(1)}, compSymbol) && strcmp(board{p(2)}, compSymbol) && strcmp(board{p(3)}, compSymbol)
        winner = 'computer';
        break
    end 
end 
if strcmp (winner, 'computer')
    break
end 
    end
%Final results are determined and displayed
if strcmp(winner, 'user')
    disp ('You win! Great job!')
elseif strcmp (winner, 'computer')
    disp ('The computer wins this time!')
else 
    disp ('It''s a tie!')
end 
playAgain= input ('Would you like to play again? (y/n): ', 's');
end
    disp ('Thanks for playing Tic Tac Toe! Goodbye!')
end
 
