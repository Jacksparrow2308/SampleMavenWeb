<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f4f4f9;
        }

        .calculator {
            background: #fff;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            padding: 20px;
        }

        .display {
            background: #f4f4f4;
            border: none;
            border-radius: 5px;
            font-size: 1.5rem;
            text-align: right;
            padding: 10px;
            margin-bottom: 20px;
            width: 100%;
            box-sizing: border-box;
        }

        .buttons {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 10px;
        }

        .button {
            background: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1.2rem;
            padding: 15px;
            cursor: pointer;
        }

        .button:active {
            background: #0056b3;
        }

        .button.operator {
            background: #28a745;
        }

        .button.operator:active {
            background: #1e7e34;
        }

        .button.clear {
            background: #dc3545;
        }

        .button.clear:active {
            background: #bd2130;
        }
    </style>
</head>
<body>
    <div class="calculator">
        <input type="text" class="display" id="display" readonly>
        <div class="buttons">
            <button class="button" onclick="appendInput('7')">7</button>
            <button class="button" onclick="appendInput('8')">8</button>
            <button class="button" onclick="appendInput('9')">9</button>
            <button class="button operator" onclick="appendInput('/')">/</button>

            <button class="button" onclick="appendInput('4')">4</button>
            <button class="button" onclick="appendInput('5')">5</button>
            <button class="button" onclick="appendInput('6')">6</button>
            <button class="button operator" onclick="appendInput('*')">×</button>

            <button class="button" onclick="appendInput('1')">1</button>
            <button class="button" onclick="appendInput('2')">2</button>
            <button class="button" onclick="appendInput('3')">3</button>
            <button class="button operator" onclick="appendInput('-')">-</button>

            <button class="button" onclick="appendInput('0')">0</button>
            <button class="button" onclick="appendInput('.')">.</button>
            <button class="button clear" onclick="clearDisplay()">C</button>
            <button class="button operator" onclick="appendInput('+')">+</button>

            <button class="button" style="grid-column: span 4;" onclick="computeResult()">=</button>
        </div>
    </div>

    <script>
        let display = document.getElementById('display');
        let currentInput = '';

        function appendInput(value) {
            currentInput += value;
            updateDisplay();
        }

        function updateDisplay() {
            display.value = currentInput;
        }

        function clearDisplay() {
            currentInput = '';
            updateDisplay();
        }

        function computeResult() {
            try {
                // Use eval to calculate the result
                currentInput = eval(currentInput).toString();
                updateDisplay();
            } catch (error) {
                display.value = 'Error';
                currentInput = '';
            }
        }
    </script>
</body>
</html>
