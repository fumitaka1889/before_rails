let test = [
  {subject: 'math',
   points: 70
 },
  {subject: 'english',
   points: 50
 }, {subject: 'society',
   points: 80
 }
];
console.log(test);
let science = { subject: "science", points: 100};
test.push(science);
console.log(test[3].points);
