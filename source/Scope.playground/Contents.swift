import UIKit

/*:
 # Scope
 - 동일한 범위 내에서는 단 하나의 이름을 갖는 변수나 상수가 존재해야 함
 
 - 구분 : Global Scope, Local Scope
 - `{ }`로 구분
 
 */

//: #1 - Global Scope

let g1 = 123
//g2

func doSomething() {
  // #3 - local scope1
  let l1 = 123
  let g1 = 456
  
  g1
  g2
  
  if true {
    // #4 - local scope2
    l1
    //l2
    let l3 = 123
  }
  // #5 - local scope1
  let l2 = 123
  //l3
}

// #2 - Global Scope
//let g1 = 123
let g2 = 123
g1
g2

struct Scope {
  // #6
  //g1
  //g2
  
  func doSomething() {
    //#7
    g1
    g2
    
  }
}

/*:
 1.  동일한 스코프에 있는 상수, 변수에 접근 가능
 2. 이전에 선언된 상수, 변수에 접근할 수 있음
 3. Local Scope에서는 global scope에 선언된 변수, 상수에 접근할 수 있음(선언되기전의 상수, 변수에 접근할 수 없음)
 4. 상위 스코프에서는 하위 스코프상에 선언된 상수,변수에 접근할 수 없음
 5. 서로 다른 스코프에 같은 이름의 상수, 변수가 존재한다면 동일한 스코프에 있는 값을 다룸
*/
