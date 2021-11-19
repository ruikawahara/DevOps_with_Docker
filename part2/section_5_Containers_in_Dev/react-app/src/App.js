import React, { useState } from 'react'

function App() {
  // for input fields
  const [num1, setNum1] = useState(0)
  const [num2, setNum2] = useState(0)

  // for solution
  const [ans, setAns] = useState(0)

  return (
    <div className="App">
      <header className="App-header">
        <p>
          <u><b>Simple Calculator App</b></u>
        </p>
      </header>

      <body>
        <div>
          <p>First...</p>
          <input 
            name="num1" 
            type="number"
            pattern="[0-9]+"
            onChange={e => setNum1(e.target.value)}
            placeholder="Enter first number"
          />
          <p> then, ...</p>
          <input 
            name="num2" 
            type="number"
            pattern="[0-9]+"
            onChange={e => setNum2(e.target.value)}
            placeholder="Enter second number"
          />

          <div>
            <button onClick={() => setAns(parseInt(num1) + parseInt(num2))}>
              +
            </button>
          </div>

          <div>
            <button onClick={() => setAns(parseInt(num1) - parseInt(num2))}>
              -
            </button>
          </div>

          <div>
            <button onClick={() => setAns(parseInt(num1) * parseInt(num2))}>
              *
            </button>
          </div>

          <div>
            <button onClick={() => setAns(parseInt(num1) / parseInt(num2))}>
              /
            </button>
          </div>

          <p>Answer is: {ans}.</p>

        </div>
      </body>
    </div>
  );
}

export default App;
