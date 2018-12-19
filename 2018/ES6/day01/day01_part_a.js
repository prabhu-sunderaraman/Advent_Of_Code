let frequency = (input) => {
	let inputArr = input.split('\n').map(num => parseInt(num.trim()));
	let output = inputArr.reduce((curr, next) => curr + next);
	console.log(`OUTPUT: ${output}`);
	return output;	
}

module.exports = frequency;