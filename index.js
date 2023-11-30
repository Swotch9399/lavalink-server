const { default: { stream } } = require("got");
const { createWriteStream } = require("fs");
const { execSync } = require("child_process");
const path = "./Lavalink.jar";

const lljar = "https://drive.google.com/uc?export=download&id=18BB9U8ZTKoRCfXc095oCQ8S_FtLewlX8";

const start = () => {
     const download = stream(lljar).pipe(createWriteStream('Lavalink.jar'));
     download.on("finish", () => {
         execSync("java -jar Lavalink.jar", { stdio: "inherit" });
     });
 };

start();
