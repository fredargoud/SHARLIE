import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-landing', {
    strings: ["Quand le coworking s'invite chez toi", "Quand le coworking s'invite, ou bien chez moi !"],
    typeSpeed: 30,
    loop: false,
    showCursor: false,
    backDelay: 800,
    smartBackspace: true,
  });
}

export { loadDynamicBannerText };
