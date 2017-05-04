const fs = require("fs");

const notes = ["a", "b", "c", "d", "e", "f", "g"];
/*
fs.readdir("./", (err, files) => {
  files.forEach(file => {
    if (file === "test.js") return;
    if (!/[0-9]/.test(file.slice(0, 2))) {
      const number = parseInt(file[2]);
      const tempfile = file;
      const newnote = notes[(notes.indexOf(file[0].toLowerCase()) + 6) % 7];
      file = newnote + "s" + (number + (newnote === "g" ? -1 : 0)) + ".mp3";
      // console.log(tempfile, file.toLowerCase());
      fs.renameSync(tempfile, file.toLowerCase());
    } else {
      // console.log(file, file.toLowerCase());
      fs.renameSync(file, file.toLowerCase());
    }
  });
});
*/

fs.readdir("./", (err, files) => {
  files.forEach(file => {
    const num = parseInt(file.slice(-5).slice(0, 1));
    if (!isNaN(num)) {
      // console.log(file, file.replace(/[0-9]/, num - 1));
      fs.renameSync(file, file.replace(/[0-9]/, num - 1));
    }
  });
});

