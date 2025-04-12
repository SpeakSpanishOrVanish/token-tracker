-- Simple Token Tracker
local currentTokens = 970
local targetTokens = 2610
local tokensNeeded = targetTokens - currentTokens

local pointsPerToken = 60
local pointsNeeded = tokensNeeded * pointsPerToken

local secondsElapsed = 0
local points = 0
local tokens = 0

while points < pointsNeeded do
	wait(1)
	secondsElapsed += 1
	points += 1
	tokens = math.floor(points / pointsPerToken)

	local remainingTokens = tokensNeeded - tokens
	local remainingPoints = pointsNeeded - points

	local hrs = math.floor(remainingPoints / 3600)
	local mins = math.floor((remainingPoints % 3600) / 60)
	local secs = remainingPoints % 60

	print(string.format("Elapsed: %ds | Tokens: %d | Left: %d | Time Left: %02d:%02d:%02d",
		secondsElapsed, tokens, remainingTokens, hrs, mins, secs))
end

print("✅ Goal Reached!")
