x = 4
if (x == 4) {
	console.log("hi")
}

console.log("hello world")


function power(base, exponent) {
	if (exponent == undefined) {
		exponent = 2;
	var result = 1;
	for (var count = 0; count < exponent; count += 1)
		result *= base;
	return result
	}
}


function power(base, exponent) {
	if (exponent == undefined)
		exponent == 2;
	var result = 1;
	for (var count = 0; count < exponent; count += 1)
		result *= base;
	return result
}


function printFarmInventory(cows, chickens) {
	var cowString = cows
	while (cowString.length < 3) 
		cowString = "0" + cowString;
	console.log(cowString + "Cows")
	var chickensString = chickens
	while (chickensString.length < 3)
		chickensString = "0" + chickensString
	console.log(chickensString + "Chickens")
}

printFarmInventory(7,11)



function printZeroPaddedwithLabel (number, label) {
	var numberString = String(number);
	while (numberString.length < 3) {
		numberString = "0" + numberString;
	} console.log(numberString + " " + label);
}

function printFarmInventory(cows, chickens, pigs) {
	printZeroPaddedwithLabel(cows, "Cows");
	printZeroPaddedwithLabel(chickens, "Chickens");
	printZeroPaddedwithLabel(pigs, "Pigs");
}

function zeroPad(number, width) {
	var string = String(number);
	while (string.length < width) {
		string = "0" + string;
	} return string;
}

function printFarmInventory2(cows, chickens, pigs) {
	console.log(zeroPad(cows, 3) + " " + "Cows");
	console.log(zeroPad(chickens, 3) + " " + "Chickens");
	console.log(zeroPad(pigs, 3) + " " + "Pigs");
}


/* chapter 3 exercises */

// this next exercise is the recursion question //

function isEven(number) {
		if (number == 0)
			return true
		else if (number == 1)
			return false
		else 
			return isEven(number - 2)
	}
}

/* chapter 3 exercises */