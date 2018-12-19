let repeatFrequency = (input) => {
	let inputArr = input.split('\n').map(num => parseInt(num.trim()));
	let frequencyList = [];
	let counter = 1;
	frequencyList.push(0 + inputArr[0]);
	let output = undefined;
	while(counter < inputArr.length) {
		let num = inputArr[counter];
		let result = num + frequencyList[frequencyList.length - 1];
		if(frequencyList.find(it => it === result)) {
			output = result;
			break;
		}
		frequencyList.push(result);	
		counter++;
		if(counter == inputArr.length) {
			counter = 0;
		}
	}
	return output;	
}

module.exports = repeatFrequency;