// Sort objects on property, sort these objects on descending order of grade.
// Input: 

// [{"name":"Anam","grade":"A"},{"name":"Arjun","grade":"A+"},{"name":"Iram","grade":"B+"},{"name":"Zia","grade":"C"},{"name":"Reah","grade":"B"},{"name":"Karan","grade":"A"},{"name":"Mithum","grade":"B"},{"name":"Ankur","grade":"B+"}]



let arr = [{"name":"Anam","grade":"A"},{"name":"Arjun","grade":"A+"},{"name":"Iram","grade":"B+"},{"name":"Zia","grade":"C"},{"name":"Reah","grade":"B"},{"name":"Karan","grade":"A"},{"name":"Mithum","grade":"B"},{"name":"Ankur","grade":"B+"}]

let res = arr.sort((a, b) => {
    const gradeOrder = { 'A+': 1, 'A': 2, 'B+': 3, 'B': 4, 'C': 5 }; // Define grade order
    return gradeOrder[a.grade] - gradeOrder[b.grade]; // Compare grades
});
console.log(res)