const express = require('express');

const app = express();
const port = 5000

app.get('/', (req, res) => {
    return res.send("Hello from ec2")
})

app.listen(port, () => {
    console.log("server listening on port " + port);
})

