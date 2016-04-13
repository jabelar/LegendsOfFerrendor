var playerHit;
playerHit = argument0;

playerNumber = playerHit.playerNumber;

playerHealth[playerNumber] += damage;
if playerHealth[playerNumber] <= 0
{
    scrPlayerDies(playerNumber);
}
