const food = ["Apple", "Banana", "Cucumber", "Watermelon", "Ice-cream", "Orange", "Eggplant", "Egg"]

function q1(arr) {
    arr.forEach(arrElement => {
        let str = arrElement;
        let char = str.charAt(0);
        switch (char) {
            case 'A':
                console.log(str);
                break;
            case 'E':
                console.log(str);
                break;
            case 'I':
                console.log(str);
                break;
            case 'O':
                console.log(str);
                break;
            case 'U':
                console.log(str);
                break;
        }
    }
    )
}
q1(food);

function q2(arr) {
    arr.forEach(arrElement => {
        let str = arrElement;
        if (str.length > 5) {
            console.log(str);
        }
    }
    )
}
console.log("");
q2(food);