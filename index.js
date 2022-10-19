'use strict';

const os = require('node:os');
const { exec } = require('node:child_process');

const say = console.log;
const log = (err, stdout, stderr) => {
    if (err) {
        console.error(`exec error: ${err}`);
        return;
    }
    console.log(stdout);
}

exec('cat /etc/centos-release', log);

say(process.argv);
