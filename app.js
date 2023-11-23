const express = require('express');

const app = express();

// Define a simple routes
app.get('/', (req, res) => {
  res.send('Hello, this is your Express.js server!');
});



// Listen on port 3000
const port = 3000;
app.listen(port, () => {
  console.log(`Server is listening on port ${port}`);
});
