#FieldGoals per game:
Data <- Games
matplot(t(Data), type = 'b', pch = 10:20, col = 1:6, xlab ="Year", ylab = "Goals")
legend("bottomleft", bg = "transparent", cex = 0.1, col = 1:6, pch = 10:20, legend = Players, inset = 0.01, horiz = 'F')

#Accuracey:
Data <- FieldGoals/FieldGoalAttempts
matplot(t(Data), type = 'b', pch = 15:25, col = 1:4)
legend("bottomleft", col = 1:4, pch = 15:25, legend = Players, inset = 0.01, horiz = 'F')

#Simplified Function:
plot <- function(data,copy,players,year)
{
  Data <- data[players,year,drop=F]
  matplot(t(Data), type = 'b', pch = 10:20, col = 1:6)
  legend("bottomleft", col = 1:6, pch = 10:20, legend = Players[players], inset = 0.01, horiz = 'F')
  title(main = copy)
}
