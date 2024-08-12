#include <stdio.h>
#include <string.h>

struct nameOfGame {
  char gameName[100];
};

struct playerStats {
  char nameOfPlayer[100];
  int score;
};

int main(int argc, char *argv[])
{
  char gameName[100], playerName1[100], playerName2[100];
  int score1, score2;

  printf("Enter the name of the game: ");
  fgets(gameName, sizeof(gameName), stdin);
  // Remove newline character from gameName
  gameName[strcspn(gameName, "\n")] = 0;

  printf("Enter player 1 name: ");
  fgets(playerName1, sizeof(playerName1), stdin);
  // Remove newline character from playerName1
  playerName1[strcspn(playerName1, "\n")] = 0;

  printf("Enter the score of player 1 (%s): ", playerName1);
  scanf("%d", &score1);
  getchar(); // Clear the newline character left by scanf

  printf("Enter player 2 name: ");
  fgets(playerName2, sizeof(playerName2), stdin);
  // Remove newline character from playerName2
  playerName2[strcspn(playerName2, "\n")] = 0;

  printf("Enter the score of player 2 (%s): ", playerName2);
  scanf("%d", &score2);

  struct playerStats player1;
  struct playerStats player2;
  struct nameOfGame name;

  strcpy(name.gameName, gameName);

  strcpy(player1.nameOfPlayer, playerName1);
  player1.score = score1;

  strcpy(player2.nameOfPlayer, playerName2); // Fix: Copy player2 stats
  player2.score = score2;

  printf("\nName of game: %s\n", name.gameName);

  printf("Stats of the players: \n");
  printf("Player 1 Name\tPlayer 2 Name\n");
  printf("%s\t\t%s\n", player1.nameOfPlayer, player2.nameOfPlayer); // Added \n for formatting
  printf("%s's Score\t%s's Score\n", player1.nameOfPlayer, player2.nameOfPlayer);
  printf("%d\t\t%d\n", player1.score, player2.score); // Added \n for formatting

  return 0;
}

