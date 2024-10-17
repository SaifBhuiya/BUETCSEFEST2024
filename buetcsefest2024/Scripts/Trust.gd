extends Node
var Trust = 0

func gainTrust(amount:int):
	Trust += amount
		
func loseTrust(amount:int):
	Trust -= amount
