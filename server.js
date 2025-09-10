const express = require('express');
const app = express();
app.get('/', (_req, res) => res.send('Hello Snyk!'));
app.listen(3000, () => console.log('Listening on 3000'));