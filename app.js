const express = require('express');
// path lets us navigate the
const path = require('path');
const hbs = require('hbs');
// require the sql conection
const sql = require('./utils/sql.js')
const port = process.env.PORT || 3000; 
const app = express();

// defining the varriable that will be used in order to run the query
var sqlArrHead = [],
    sqlArrParag = [],
    sqlArrImg = [];



app.use(express.static('public'));

// tell exprss to use the handlebars engine to render data
app.set('view engine', 'hbs');

// tell express to use tghe views folder to find this template
// app.set('views', __dirname + '/views');
app.set('views', path.join(__dirname + "/views"));

app.use(express.static(path.join('public')));

app.get(`/`, (req, res) =>  {
  console.log('youre on the home page');
  res.render('home');
})


// this is the query that will handle bringing the data from the table "tb_home" and populate into the home.hbs
app.get;('/', (req, res) => {

  sql.getConnection((err, connection) => {
      if(err) {
          return console.log(err.message);
      }
      let query = "SELECT * FROM tbl_home";

      sql.query(query, (err, rows) => {
          connection.release();
          if (err) { return console.log(err.message) }

          rows.forEach(row => {
              sqlArrImg.push(row.Image);
              sqlArrHead.push(row.Heading);
              sqlArrParag.push(row.Paragraph);
          })
            // defining all handlebar names and where the data is from
            res.render('home', {
                contentOneImg: sqlArrImg[0],
                contentOneHead: sqlArrHead[0],
                contentOneParag: sqlArrParag[0], 
                contentTwoImg: sqlArrImg[1],
                contentTwoHead: sqlArrHead[1],
                contentTwoParag: sqlArrParag[1],
                contentThreeImg: sqlArrText[2],
                contentThreeHead: sqlArrHead[2],
                contentThreeParag: sqlArrParag[2], 
                contentFourImg: sqlArrImg[3],
                contentFourHead: sqlArrHead[3],
                contentFourParag: sqlArrParag[3],
                contentFiveImg: sqlArrImg[4],
                contentFiveHead: sqlArrHead[4],
                contentFiveParag: sqlArrParag[4],
                contentSixImg: sqlArrImg[5],
                contentSixHead: sqlArrName[5],
                contentSixParag: sqlArrParag[5]
            });

            console.log(sqlArrImg);
            console.log(sqlArrHead);
            console.log(sqlArrParag);
      })
  })
})

    // this is the hamburger function 
    // (function(){
    //   "use strict";

    //   console.log('fired');

    //   var button = document.querySelector("#button");
    //   var burgerCon = document.querySelector("#burgerCon");

    //   function hamburgerMenu() {
    //     burgerCon.classList.toggle("slideToggle");
    //     button.classList.toggle("expanded");
    //   }

    //   button.addEventListener("click", hamburgerMenu, false);
    // });


app.listen(port, () => {
  console.log(`Server running at ${port}`);
});
