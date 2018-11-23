import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-landing', {
    strings: ["Quand le coworking s'invite, chez toi", "Quand le coworking s'invite, ou bien chez moi !"],
    typeSpeed: 60,
    showCursor: false,
    backDelay: 800,
    loop: true,
  });
}

export { loadDynamicBannerText };
