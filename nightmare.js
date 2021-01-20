const Nightmare = require('nightmare');
nightmare = Nightmare({
    gotoTimeout: 25000,
    show: false,
    width: 1200,
    height: 800,
    switches: false,
    webPreferences: {
        images: false,
    }
});

(async () => {
    console.log('Start Nightmare...')
    const result = await nightmare.goto('https://ya.ru/');
    console.log(result.code);
})();
