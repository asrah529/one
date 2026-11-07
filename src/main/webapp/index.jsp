<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>NexusShop — Dark · Animated</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
/* ===================== TOKENS ===================== */
:root{
  --bg:#000000;
  --bg-soft:#08080a;
  --card:#131316;
  --card-2:#1a1a1f;
  --border:rgba(255,255,255,.08);
  --border-strong:rgba(255,255,255,.16);
  --text:#f5f5f7;
  --muted:#8e8e93;
  --muted-2:#6e6e73;
  --accent:#2997ff;
  --accent-2:#bf5af2;
  --accent-3:#0071e3;
  --success:#30d158;
  --radius:20px;
  --radius-lg:28px;
  --ease:cubic-bezier(.16,1,.3,1);
}

@property --angle{ syntax:'<angle>'; initial-value:0deg; inherits:false; }

*{margin:0;padding:0;box-sizing:border-box;}
html{scroll-behavior:smooth;}
body{
  font-family:'Inter',-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,sans-serif;
  background:var(--bg);
  color:var(--text);
  line-height:1.47059;
  letter-spacing:-.022em;
  -webkit-font-smoothing:antialiased;
  -moz-osx-font-smoothing:grayscale;
  overflow-x:hidden;
}
a{text-decoration:none;color:inherit;}
img{display:block;max-width:100%;}
button{cursor:pointer;font-family:inherit;border:none;background:none;color:inherit;}
input{font-family:inherit;}
::selection{background:rgba(41,151,255,.35);}

.container{width:100%;max-width:1200px;margin:0 auto;padding:0 22px;}

/* ===================== REVEAL (scroll animation) ===================== */
.reveal{opacity:0;}
.reveal.in-view{
  animation:revealUp .85s var(--ease) both;
  animation-delay:calc(var(--i,0) * 70ms);
}
@keyframes revealUp{
  from{opacity:0;transform:translateY(44px) scale(.985);}
  to{opacity:1;transform:translateY(0) scale(1);}
}

/* ===================== SCROLL PROGRESS ===================== */
.scroll-progress{
  position:fixed;top:0;left:0;height:3px;width:0;
  background:linear-gradient(90deg,#0071e3,#2997ff,#bf5af2);
  z-index:1200;
  box-shadow:0 0 12px rgba(41,151,255,.8);
}

/* ===================== HEADER ===================== */
header{
  position:sticky;top:0;z-index:1000;
  background:rgba(0,0,0,.62);
  backdrop-filter:saturate(180%) blur(22px);
  -webkit-backdrop-filter:saturate(180%) blur(22px);
  border-bottom:1px solid var(--border);
  transition:transform .45s var(--ease),background .3s ease;
}
header.hide{transform:translateY(-100%);}
.header-inner{
  display:flex;align-items:center;justify-content:space-between;gap:16px;
  padding:10px 0;min-height:54px;
}
.brand{
  display:flex;align-items:center;gap:8px;font-weight:700;font-size:21px;
  letter-spacing:-.03em;flex-shrink:0;
}
.brand i{
  font-size:21px;
  background:linear-gradient(135deg,#2997ff,#bf5af2);
  -webkit-background-clip:text;background-clip:text;color:transparent;
  filter:drop-shadow(0 0 10px rgba(41,151,255,.55));
}
.brand .accent{
  background:linear-gradient(135deg,#2997ff,#bf5af2);
  -webkit-background-clip:text;background-clip:text;color:transparent;
}

nav.main-nav ul{display:flex;gap:4px;list-style:none;align-items:center;}
nav.main-nav li a{
  display:flex;align-items:center;gap:6px;padding:8px 14px;border-radius:980px;
  font-weight:400;font-size:14px;color:var(--text);opacity:.75;
  transition:all .25s var(--ease);
}
nav.main-nav li a:hover,nav.main-nav li a.active{
  opacity:1;background:rgba(255,255,255,.08);
  box-shadow:inset 0 0 0 1px rgba(255,255,255,.06);
}

.header-actions{display:flex;align-items:center;gap:4px;flex-shrink:0;}
.header-actions .icon-btn{
  width:38px;height:38px;display:grid;place-items:center;border-radius:50%;
  font-size:17px;color:var(--text);opacity:.75;
  transition:all .25s var(--ease);
}
.header-actions .icon-btn:hover{
  opacity:1;background:rgba(255,255,255,.08);
  transform:translateY(-2px);
}
.cart-wrap{position:relative;}
.cart-count{
  position:absolute;top:0;right:0;background:linear-gradient(135deg,#0071e3,#2997ff);
  color:#fff;font-size:10px;font-weight:700;width:18px;height:18px;border-radius:50%;
  display:grid;place-items:center;border:1.5px solid #000;
  box-shadow:0 0 10px rgba(41,151,255,.7);
}
.cart-count.pop{animation:pop .45s var(--ease);}
@keyframes pop{0%{transform:scale(1)}45%{transform:scale(1.6)}100%{transform:scale(1)}}

.search-wrap{
  display:flex;align-items:center;background:rgba(255,255,255,.06);
  border-radius:980px;padding:0 14px 0 16px;min-width:200px;
  border:1px solid var(--border);
  transition:all .3s var(--ease);
}
.search-wrap:focus-within{
  background:rgba(255,255,255,.1);
  border-color:rgba(41,151,255,.6);
  box-shadow:0 0 0 4px rgba(41,151,255,.14),0 0 24px rgba(41,151,255,.25);
  min-width:240px;
}
.search-wrap input{
  border:0;background:transparent;outline:none;width:100%;padding:8px 0;
  font-size:14px;color:var(--text);
}
.search-wrap input::placeholder{color:var(--muted-2);}
.search-wrap button{padding:8px 0 8px 8px;color:var(--muted);font-size:14px;transition:color .25s;}
.search-wrap button:hover{color:var(--accent);}

.mobile-toggle{
  display:none;width:38px;height:38px;border-radius:50%;font-size:18px;
  background:rgba(255,255,255,.07);color:var(--text);transition:background .25s;
}
.mobile-toggle:hover{background:rgba(255,255,255,.14);}

#mobileMenu{display:none;background:#0b0b0d;border-top:1px solid var(--border);padding:12px 0 18px;}
#mobileMenu ul{list-style:none;display:flex;flex-direction:column;gap:2px;}
#mobileMenu ul li a{
  display:flex;align-items:center;gap:12px;padding:11px 14px;border-radius:10px;
  font-size:15px;transition:background .25s;
}
#mobileMenu ul li a:hover{background:rgba(255,255,255,.07);}

/* ===================== BUTTONS ===================== */
.btn{
  position:relative;overflow:hidden;
  display:inline-flex;align-items:center;justify-content:center;gap:8px;
  padding:12px 26px;border-radius:980px;font-weight:500;font-size:17px;
  letter-spacing:-.022em;transition:all .3s var(--ease);border:1px solid transparent;
  white-space:nowrap;
}
.btn-primary{
  background:linear-gradient(135deg,#0071e3,#2997ff);
  color:#fff;
  box-shadow:0 6px 24px rgba(41,151,255,.35);
}
.btn-primary:hover{transform:translateY(-2px) scale(1.02);box-shadow:0 12px 36px rgba(41,151,255,.55);}
.btn-primary::after{
  content:'';position:absolute;top:0;left:-120%;width:55%;height:100%;
  background:linear-gradient(90deg,transparent,rgba(255,255,255,.45),transparent);
  transform:skewX(-22deg);transition:left .65s var(--ease);
}
.btn-primary:hover::after{left:150%;}

.btn-ghost{
  background:rgba(255,255,255,.06);color:#fff;border:1px solid rgba(255,255,255,.18);
  backdrop-filter:blur(12px);
}
.btn-ghost:hover{
  background:rgba(255,255,255,.13);border-color:rgba(255,255,255,.4);
  transform:translateY(-2px);box-shadow:0 10px 30px rgba(255,255,255,.08);
}

/* ===================== HERO ===================== */
.hero{
  position:relative;display:flex;align-items:center;
  min-height:600px;padding:100px 0 90px;overflow:hidden;
  background:radial-gradient(ellipse 80% 60% at 50% 0%,#0d0d16 0%,#000 70%);
  --mx:50%;--my:40%;
}
.aurora{
  position:absolute;inset:-25%;pointer-events:none;
  background:
    radial-gradient(38% 38% at 22% 28%,rgba(41,151,255,.34),transparent 62%),
    radial-gradient(34% 34% at 78% 22%,rgba(191,90,242,.28),transparent 62%),
    radial-gradient(42% 42% at 62% 82%,rgba(0,113,227,.26),transparent 62%);
  filter:blur(70px);
  animation:auroraMove 20s ease-in-out infinite alternate;
}
@keyframes auroraMove{
  0%{transform:translate(0,0) scale(1) rotate(0deg);}
  50%{transform:translate(4%,-4%) scale(1.1) rotate(6deg);}
  100%{transform:translate(-4%,3%) scale(1.05) rotate(-4deg);}
}
.hero-grid-overlay{
  position:absolute;inset:0;pointer-events:none;
  background-image:
    linear-gradient(rgba(255,255,255,.045) 1px,transparent 1px),
    linear-gradient(90deg,rgba(255,255,255,.045) 1px,transparent 1px);
  background-size:64px 64px;
  mask-image:radial-gradient(ellipse at 50% 40%,#000 15%,transparent 72%);
  -webkit-mask-image:radial-gradient(ellipse at 50% 40%,#000 15%,transparent 72%);
  animation:gridDrift 24s linear infinite;
}
@keyframes gridDrift{to{background-position:64px 64px,64px 64px;}}
.hero-spotlight{
  position:absolute;inset:0;pointer-events:none;
  background:radial-gradient(560px circle at var(--mx) var(--my),rgba(41,151,255,.16),transparent 62%);
  transition:background .12s linear;
}
.hero .container{position:relative;z-index:3;}

.hero .badge{
  display:inline-flex;align-items:center;gap:8px;
  background:rgba(41,151,255,.12);
  border:1px solid rgba(41,151,255,.32);
  color:#7cc4ff;padding:6px 16px;border-radius:980px;
  font-weight:500;font-size:14px;letter-spacing:.02em;margin-bottom:22px;
  box-shadow:0 0 26px rgba(41,151,255,.18);
  opacity:0;animation:heroIn 1s var(--ease) .05s forwards;
}
.hero h1{
  font-size:clamp(38px,6.4vw,68px);font-weight:800;letter-spacing:-.035em;
  line-height:1.04;max-width:760px;margin-bottom:22px;
  opacity:0;animation:heroIn 1s var(--ease) .16s forwards;
}
.hero h1 .grad{
  background:linear-gradient(100deg,#2997ff,#bf5af2,#2997ff,#66d9ff);
  background-size:300% auto;
  -webkit-background-clip:text;background-clip:text;color:transparent;
  animation:gradShift 7s linear infinite;
}
@keyframes gradShift{to{background-position:300% center;}}

.hero p{
  font-size:clamp(16px,2vw,21px);color:var(--muted);max-width:560px;
  margin-bottom:34px;line-height:1.55;
  opacity:0;animation:heroIn 1s var(--ease) .3s forwards;
}
.hero .actions{
  display:flex;gap:14px;flex-wrap:wrap;margin-bottom:52px;
  opacity:0;animation:heroIn 1s var(--ease) .44s forwards;
}
@keyframes heroIn{to{opacity:1;transform:translateY(0);}}
.hero .badge,.hero h1,.hero p,.hero .actions{transform:translateY(34px);}

.hero-stats{
  display:flex;gap:52px;flex-wrap:wrap;
  opacity:0;animation:heroIn 1s var(--ease) .6s forwards;transform:translateY(34px);
}
.hero-stats div{display:flex;flex-direction:column;}
.hero-stats strong{
  font-size:30px;font-weight:700;letter-spacing:-.03em;
  background:linear-gradient(135deg,#fff,#9bb8d4);
  -webkit-background-clip:text;background-clip:text;color:transparent;
}
.hero-stats span{font-size:13px;color:var(--muted-2);letter-spacing:.04em;text-transform:uppercase;}

/* ===================== TICKER ===================== */
.ticker{
  overflow:hidden;border-top:1px solid var(--border);border-bottom:1px solid var(--border);
  background:linear-gradient(90deg,#08080a,#0c0c11,#08080a);
  padding:14px 0;
}
.ticker-track{
  display:flex;gap:52px;width:max-content;
  animation:marquee 32s linear infinite;
}
.ticker:hover .ticker-track{animation-play-state:paused;}
@keyframes marquee{to{transform:translateX(-50%);}}
.ticker-item{
  display:flex;align-items:center;gap:10px;white-space:nowrap;
  color:var(--muted);font-size:13.5px;letter-spacing:.02em;
}
.ticker-item i{color:var(--accent);filter:drop-shadow(0 0 8px rgba(41,151,255,.7));}

/* ===================== SECTIONS ===================== */
.section{padding:88px 0;position:relative;}
.section-header{
  display:flex;align-items:flex-end;justify-content:space-between;gap:16px;
  margin-bottom:44px;flex-wrap:wrap;
}
.section-header .title-group h2{
  font-size:clamp(28px,4vw,40px);font-weight:700;letter-spacing:-.025em;
}
.section-header .title-group p{color:var(--muted);margin-top:6px;font-size:17px;}
.section-header .view-all{
  font-weight:500;color:var(--accent);display:flex;align-items:center;gap:6px;
  font-size:15px;transition:gap .3s var(--ease),color .3s;
}
.section-header .view-all:hover{gap:14px;color:#66d9ff;}

/* ===================== CATEGORIES ===================== */
.categories-grid{display:grid;grid-template-columns:repeat(6,1fr);gap:18px;}
.cat-card{
  background:linear-gradient(160deg,var(--card),#0e0e11);
  border:1px solid var(--border);border-radius:18px;
  padding:28px 12px;text-align:center;cursor:pointer;
  transition:transform .4s var(--ease),border-color .4s,box-shadow .4s,background .4s;
  position:relative;overflow:hidden;
}
.cat-card::before{
  content:'';position:absolute;inset:0;border-radius:inherit;
  background:radial-gradient(120px circle at 50% 0%,rgba(41,151,255,.25),transparent 70%);
  opacity:0;transition:opacity .4s;
}
.cat-card:hover{
  transform:translateY(-8px);
  border-color:rgba(41,151,255,.5);
  box-shadow:0 22px 44px rgba(0,0,0,.7),0 0 34px rgba(41,151,255,.18);
}
.cat-card:hover::before{opacity:1;}
.cat-card .icon-wrap{
  position:relative;width:54px;height:54px;border-radius:15px;
  background:rgba(41,151,255,.1);display:grid;place-items:center;
  margin:0 auto 14px;font-size:22px;color:var(--accent);
  transition:all .45s var(--ease);
}
.cat-card:hover .icon-wrap{
  background:linear-gradient(135deg,#0071e3,#bf5af2);color:#fff;
  transform:rotate(-8deg) scale(1.1);
  box-shadow:0 10px 28px rgba(41,151,255,.5);
}
.cat-card h4{font-size:15px;font-weight:600;position:relative;}
.cat-card .count{font-size:13px;color:var(--muted-2);margin-top:3px;position:relative;}

/* ===================== PRODUCTS ===================== */
.products-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:24px;}
.product-card{
  background:linear-gradient(170deg,var(--card),#0d0d10);
  border:1px solid var(--border);border-radius:22px;overflow:hidden;
  display:flex;flex-direction:column;
  transition:transform .45s var(--ease),border-color .45s,box-shadow .45s;
}
.product-card:hover{
  transform:translateY(-10px);
  border-color:rgba(41,151,255,.55);
  box-shadow:0 26px 56px rgba(0,0,0,.8),0 0 46px rgba(41,151,255,.16);
}
.product-card .img-wrap{position:relative;overflow:hidden;background:#0c0c0f;aspect-ratio:1/1;}
.product-card .img-wrap img{
  width:100%;height:100%;object-fit:cover;
  transition:transform .7s var(--ease),filter .5s;
  filter:brightness(.92) saturate(1.05);
}
.product-card:hover .img-wrap img{transform:scale(1.07);filter:brightness(1.05);}
.product-card .img-wrap::after{
  content:'';position:absolute;inset:0;pointer-events:none;
  background:linear-gradient(115deg,transparent 32%,rgba(255,255,255,.13) 50%,transparent 68%);
  transform:translateX(-110%);transition:transform .8s var(--ease);
}
.product-card:hover .img-wrap::after{transform:translateX(110%);}
.product-card .img-wrap::before{
  content:'';position:absolute;inset:0;z-index:1;pointer-events:none;
  background:linear-gradient(to top,rgba(0,0,0,.55),transparent 45%);
}

.product-card .badge{
  position:absolute;top:12px;left:12px;z-index:2;
  background:linear-gradient(135deg,#0071e3,#2997ff);color:#fff;
  padding:4px 12px;border-radius:980px;font-size:11px;font-weight:700;
  letter-spacing:.03em;box-shadow:0 4px 16px rgba(41,151,255,.5);
}
.product-card .badge.sale{
  background:linear-gradient(135deg,#e07a5f,#f4a261);
  box-shadow:0 4px 16px rgba(224,122,95,.5);
}
.product-card .wish-btn{
  position:absolute;top:12px;right:12px;z-index:2;
  width:34px;height:34px;border-radius:50%;
  background:rgba(0,0,0,.55);backdrop-filter:blur(10px);
  border:1px solid rgba(255,255,255,.14);
  display:grid;place-items:center;font-size:14px;color:#fff;
  transition:all .3s var(--ease);
}
.product-card .wish-btn:hover{
  background:#e07a5f;color:#fff;transform:scale(1.15) rotate(8deg);
  box-shadow:0 0 22px rgba(224,122,95,.7);
}
.product-card .body{padding:18px 18px 12px;flex:1;display:flex;flex-direction:column;gap:5px;}
.product-card .category-tag{
  font-size:11px;color:var(--accent);text-transform:uppercase;
  letter-spacing:.08em;font-weight:600;opacity:.85;
}
.product-card .body h5{
  font-size:16px;font-weight:600;line-height:1.3;
  display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;overflow:hidden;
}
.product-card .price-row{display:flex;align-items:center;gap:8px;margin-top:4px;}
.product-card .price{font-weight:700;font-size:18px;}
.product-card .old-price{color:var(--muted-2);text-decoration:line-through;font-size:14px;}
.product-card .rating{display:flex;align-items:center;gap:3px;font-size:12px;color:#ffb340;}
.product-card .rating span{color:var(--muted-2);margin-left:3px;}

.product-card .footer{padding:0 18px 18px;display:flex;gap:8px;}
.product-card .footer .add-btn{
  flex:1;padding:10px;border-radius:980px;
  background:rgba(255,255,255,.07);color:#fff;
  border:1px solid rgba(255,255,255,.12);
  font-weight:600;font-size:14px;
  display:flex;align-items:center;justify-content:center;gap:6px;
  transition:all .3s var(--ease);
}
.product-card .footer .add-btn:hover{
  background:linear-gradient(135deg,#0071e3,#2997ff);
  border-color:transparent;
  box-shadow:0 8px 26px rgba(41,151,255,.55);
  transform:translateY(-2px);
}
.product-card .footer .add-btn.added{
  background:linear-gradient(135deg,#1f8f4e,#30d158);
  border-color:transparent;
  box-shadow:0 8px 26px rgba(48,209,88,.45);
}

/* ===================== DEAL ===================== */
.deal-wrap{
  position:relative;padding:1.5px;border-radius:30px;
  background:conic-gradient(from var(--angle),
    rgba(41,151,255,0) 0%,rgba(41,151,255,.95) 12%,
    rgba(191,90,242,.95) 26%,rgba(41,151,255,0) 42%,rgba(41,151,255,0) 100%);
  animation:spinAngle 8s linear infinite;
  box-shadow:0 0 60px rgba(41,151,255,.14);
}
@keyframes spinAngle{to{--angle:360deg;}}

.deal-inner{
  display:flex;border-radius:29px;overflow:hidden;
  background:linear-gradient(160deg,#141418,#0a0a0c);
}
.deal-img{flex:0 0 45%;min-height:360px;background:#0d0d10;overflow:hidden;}
.deal-img img{
  width:100%;height:100%;object-fit:cover;
  transition:transform 1.2s var(--ease);
  filter:brightness(.95);
}
.deal-wrap:hover .deal-img img{transform:scale(1.06);}

.deal-content{flex:1;padding:48px 52px;display:flex;flex-direction:column;justify-content:center;}
.deal-content .tag{
  display:inline-flex;align-items:center;gap:6px;
  background:rgba(224,122,95,.15);border:1px solid rgba(224,122,95,.45);
  color:#ff9d7e;padding:5px 14px;border-radius:980px;
  font-size:12px;font-weight:700;text-transform:uppercase;letter-spacing:.06em;
  align-self:flex-start;margin-bottom:16px;
  animation:pulseTag 2.4s ease-in-out infinite;
}
@keyframes pulseTag{
  0%,100%{box-shadow:0 0 0 0 rgba(224,122,95,.35);}
  50%{box-shadow:0 0 0 10px rgba(224,122,95,0);}
}
.deal-content h3{font-size:clamp(24px,3.4vw,36px);font-weight:700;letter-spacing:-.025em;margin-bottom:6px;}
.deal-content .desc{color:var(--muted);margin-bottom:20px;font-size:16px;line-height:1.55;}
.deal-content .price-big{
  font-size:clamp(28px,4vw,40px);font-weight:800;letter-spacing:-.03em;
  background:linear-gradient(135deg,#fff,#8fb8dd);
  -webkit-background-clip:text;background-clip:text;color:transparent;
}
.deal-content .price-big .old{
  font-size:.55em;font-weight:400;color:var(--muted-2);
  text-decoration:line-through;margin-left:12px;
  -webkit-text-fill-color:var(--muted-2);
}
.deal-content .stock{font-size:15px;color:var(--muted);margin:6px 0 18px;}
.deal-content .stock strong{color:#ff9d7e;}

.timer-grid{display:flex;gap:12px;margin:18px 0 26px;perspective:400px;}
.timer-box{
  background:linear-gradient(160deg,#1e1e24,#111116);
  border:1px solid rgba(255,255,255,.1);
  padding:12px 18px;border-radius:16px;min-width:74px;text-align:center;
  box-shadow:inset 0 1px 0 rgba(255,255,255,.08),0 10px 26px rgba(0,0,0,.6);
}
.timer-box .num{
  font-size:28px;font-weight:700;line-height:1.2;letter-spacing:-.02em;
  background:linear-gradient(135deg,#fff,#9bb8d4);
  -webkit-background-clip:text;background-clip:text;color:transparent;
  transform-origin:center bottom;
}
.timer-box .num.flip{animation:flipIn .4s var(--ease);}
@keyframes flipIn{
  from{transform:rotateX(85deg);opacity:.2;}
  to{transform:rotateX(0);opacity:1;}
}
.timer-box .label{font-size:10px;opacity:.55;text-transform:uppercase;letter-spacing:.1em;margin-top:3px;}

/* ===================== TESTIMONIALS ===================== */
.testimonials-scroll{
  display:flex;gap:20px;overflow-x:auto;padding:8px 4px 22px;
  scroll-snap-type:x mandatory;-webkit-overflow-scrolling:touch;
}
.testimonials-scroll::-webkit-scrollbar{height:3px;}
.testimonials-scroll::-webkit-scrollbar-track{background:rgba(255,255,255,.05);border-radius:980px;}
.testimonials-scroll::-webkit-scrollbar-thumb{
  background:linear-gradient(90deg,#0071e3,#bf5af2);border-radius:980px;
}
.testimonial-card{
  flex:0 0 360px;background:linear-gradient(160deg,var(--card),#0d0d10);
  border:1px solid var(--border);border-radius:24px;padding:28px 30px;
  scroll-snap-align:start;
  transition:transform .45s var(--ease),border-color .45s,box-shadow .45s;
}
.testimonial-card:hover{
  transform:translateY(-6px);
  border-color:rgba(41,151,255,.45);
  box-shadow:0 22px 48px rgba(0,0,0,.75),0 0 34px rgba(41,151,255,.12);
}
.testimonial-card .stars{
  color:#ffb340;font-size:15px;letter-spacing:2px;margin-bottom:12px;
  filter:drop-shadow(0 0 8px rgba(255,179,64,.5));
}
.testimonial-card blockquote{font-size:16px;line-height:1.55;margin-bottom:20px;}
.testimonial-card .author{display:flex;align-items:center;gap:14px;}
.testimonial-card .author .avatar{
  width:44px;height:44px;border-radius:50%;object-fit:cover;
  border:1.5px solid rgba(41,151,255,.5);
  box-shadow:0 0 18px rgba(41,151,255,.3);
}
.testimonial-card .author .name{font-weight:600;font-size:15px;}
.testimonial-card .author .role{font-size:13px;color:var(--muted-2);margin-top:1px;}

/* ===================== NEWSLETTER ===================== */
.newsletter-wrap{
  position:relative;overflow:hidden;
  background:linear-gradient(135deg,#101018 0%,#0a0a0f 55%,#12101c 100%);
  border:1px solid rgba(255,255,255,.1);
  border-radius:30px;padding:56px 64px;
  display:flex;align-items:center;justify-content:space-between;gap:40px;flex-wrap:wrap;
  box-shadow:0 30px 70px rgba(0,0,0,.7);
}
.newsletter-wrap::before{
  content:'';position:absolute;inset:-40%;pointer-events:none;
  background:
    radial-gradient(30% 30% at 15% 20%,rgba(41,151,255,.35),transparent 60%),
    radial-gradient(28% 28% at 85% 80%,rgba(191,90,242,.3),transparent 60%);
  filter:blur(60px);animation:auroraMove 16s ease-in-out infinite alternate;
}
.newsletter-wrap .text{position:relative;z-index:1;}
.newsletter-wrap .text h3{font-size:clamp(22px,3vw,32px);font-weight:700;letter-spacing:-.02em;margin-bottom:6px;}
.newsletter-wrap .text p{color:var(--muted);font-size:17px;}
.newsletter-wrap form{
  position:relative;z-index:1;display:flex;gap:12px;flex-wrap:wrap;flex:1;max-width:480px;
}
.newsletter-wrap form input{
  flex:1;min-width:200px;padding:14px 22px;border-radius:980px;
  border:1px solid rgba(255,255,255,.14);
  font-size:15px;background:rgba(255,255,255,.05);color:var(--text);
  outline:none;transition:all .3s var(--ease);
}
.newsletter-wrap form input::placeholder{color:var(--muted-2);}
.newsletter-wrap form input:focus{
  border-color:rgba(41,151,255,.7);
  background:rgba(255,255,255,.09);
  box-shadow:0 0 0 4px rgba(41,151,255,.16),0 0 30px rgba(41,151,255,.2);
}
#newsletterMsg{margin-top:12px;font-size:14px;width:100%;color:#30d158;}

/* ===================== FOOTER ===================== */
footer{margin-top:24px;padding:52px 0 34px;border-top:1px solid var(--border);background:var(--bg-soft);}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:48px;margin-bottom:38px;}
.footer-grid .brand-col .brand{font-size:20px;margin-bottom:12px;}
.footer-grid .brand-col p{color:var(--muted);font-size:15px;max-width:300px;line-height:1.6;}
.footer-grid .brand-col .socials{display:flex;gap:12px;margin-top:20px;}
.footer-grid .brand-col .socials a{
  width:38px;height:38px;border-radius:50%;
  background:rgba(255,255,255,.05);border:1px solid var(--border);
  display:grid;place-items:center;color:var(--muted);font-size:16px;
  transition:all .35s var(--ease);
}
.footer-grid .brand-col .socials a:hover{
  background:linear-gradient(135deg,#0071e3,#bf5af2);color:#fff;
  border-color:transparent;transform:translateY(-4px) scale(1.08);
  box-shadow:0 10px 26px rgba(41,151,255,.45);
}
.footer-grid .col h5{
  font-weight:600;font-size:13px;margin-bottom:16px;color:var(--text);
  letter-spacing:.08em;text-transform:uppercase;opacity:.65;
}
.footer-grid .col ul{list-style:none;display:flex;flex-direction:column;gap:9px;}
.footer-grid .col ul li a{color:var(--muted);font-size:14px;transition:all .25s;}
.footer-grid .col ul li a:hover{color:var(--accent);padding-left:5px;}
.footer-bottom{
  text-align:center;padding-top:24px;border-top:1px solid var(--border);
  color:var(--muted-2);font-size:13px;
}

/* ===================== BACK TO TOP ===================== */
.back-to-top{
  position:fixed;right:24px;bottom:24px;width:50px;height:50px;border-radius:50%;
  background:linear-gradient(135deg,#0071e3,#2997ff);color:#fff;
  display:grid;place-items:center;font-size:16px;z-index:900;
  opacity:0;pointer-events:none;transform:translateY(24px) scale(.75);
  box-shadow:0 10px 34px rgba(41,151,255,.5);
  transition:all .45s var(--ease);
}
.back-to-top.show{opacity:1;pointer-events:auto;transform:translateY(0) scale(1);}
.back-to-top:hover{transform:translateY(-5px) scale(1.08);box-shadow:0 16px 44px rgba(41,151,255,.7);}

/* ===================== RESPONSIVE ===================== */
@media (max-width:1200px){
  .products-grid{grid-template-columns:repeat(3,1fr);}
  .categories-grid{grid-template-columns:repeat(3,1fr);}
  .footer-grid{grid-template-columns:1fr 1fr;gap:32px;}
}
@media (max-width:992px){
  .hero{min-height:520px;padding:80px 0 70px;}
  .deal-inner{flex-direction:column;}
  .deal-img{flex:0 0 240px;}
  .deal-content{padding:34px 30px;}
  .newsletter-wrap{padding:40px 32px;flex-direction:column;text-align:center;}
  .newsletter-wrap form{max-width:100%;}
  .search-wrap{min-width:150px;}
}
@media (max-width:768px){
  nav.main-nav{display:none;}
  .mobile-toggle{display:grid;place-items:center;}
  .products-grid{grid-template-columns:repeat(2,1fr);gap:16px;}
  .categories-grid{grid-template-columns:repeat(2,1fr);gap:12px;}
  .hero-stats{gap:32px;}
  .footer-grid{grid-template-columns:1fr;gap:26px;}
  .brand{font-size:18px;}
  .search-wrap{min-width:120px;padding:0 10px 0 14px;}
  .search-wrap input{font-size:13px;padding:6px 0;}
  .header-actions .icon-btn{width:34px;height:34px;font-size:15px;}
  .cart-count{width:16px;height:16px;font-size:9px;}
  .testimonial-card{flex:0 0 280px;padding:22px 24px;}
  .section{padding:56px 0;}
}
@media (max-width:480px){
  .products-grid{grid-template-columns:1fr 1fr;gap:12px;}
  .categories-grid{grid-template-columns:1fr 1fr;gap:10px;}
  .container{padding:0 16px;}
  .deal-content{padding:26px 20px;}
  .deal-img{flex:0 0 190px;}
  .newsletter-wrap{padding:30px 20px;}
  .product-card .body{padding:14px 12px 8px;}
  .product-card .body h5{font-size:14px;}
  .product-card .price{font-size:15px;}
  .product-card .footer{padding:0 12px 14px;}
  .product-card .footer .add-btn{font-size:12px;padding:8px;}
  .timer-box{min-width:50px;padding:7px 8px;}
  .timer-box .num{font-size:17px;}
  .timer-box .label{font-size:9px;}
  .cat-card{padding:18px 10px;}
  .cat-card .icon-wrap{width:42px;height:42px;font-size:18px;}
  .cat-card h4{font-size:13px;}
  .section-header{margin-bottom:28px;}
  .hero-stats{gap:24px;}
  .hero-stats strong{font-size:22px;}
}

/* ===================== REDUCED MOTION ===================== */
@media (prefers-reduced-motion:reduce){
  *,*::before,*::after{
    animation-duration:.001ms !important;
    animation-iteration-count:1 !important;
    transition-duration:.001ms !important;
  }
  .reveal{opacity:1 !important;}
}
</style>
</head>

<body>

<!-- scroll progress -->
<div class="scroll-progress" id="scrollProgress"></div>

<!-- ===================== HEADER ===================== -->
<header id="siteHeader">
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:12px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><i class="fas fa-store-alt"></i><span>Nexus<span class="accent">Shop</span></span></a>
    </div>

    <nav class="main-nav" aria-label="Main navigation">
      <ul>
        <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
    </nav>

    <div style="display:flex;align-items:center;gap:8px;">
      <div class="search-wrap" role="search">
        <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search" />
        <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        <div class="cart-wrap">
          <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart"><i class="fas fa-shopping-bag"></i></button>
          <span class="cart-count" id="cartCount">0</span>
        </div>
      </div>
    </div>
  </div>

  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        <li><a href="#"><i class="far fa-user"></i> Account</a></li>
        <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
      </ul>
    </div>
  </div>
</header>

<main>

  <!-- ===================== HERO ===================== -->
  <section class="hero" id="hero">
    <div class="aurora"></div>
    <div class="hero-grid-overlay"></div>
    <div class="hero-spotlight" id="heroSpotlight"></div>

    <div class="container">
      <div class="badge"><i class="fas fa-sparkles"></i> New Collection 2026</div>
      <h1>Discover Premium<br><span class="grad">Essentials</span></h1>
      <p>Curated fashion, tech &amp; accessories with free shipping on your first order. Limited-time deals await.</p>
      <div class="actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
        <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
      </div>

      <div class="hero-stats">
        <div><strong data-count="12000" data-suffix="+">0</strong><span>Products</span></div>
        <div><strong data-count="98" data-suffix="%">0</strong><span>Satisfaction</span></div>
        <div><strong data-count="24" data-suffix="/7">0</strong><span>Support</span></div>
      </div>
    </div>
  </section>

  <!-- ===================== TICKER ===================== -->
  <div class="ticker" aria-hidden="true">
    <div class="ticker-track">
      <span class="ticker-item"><i class="fas fa-truck-fast"></i> Free shipping over $50</span>
      <span class="ticker-item"><i class="fas fa-rotate-left"></i> 30-day easy returns</span>
      <span class="ticker-item"><i class="fas fa-shield-halved"></i> 2-year warranty</span>
      <span class="ticker-item"><i class="fas fa-bolt"></i> Same-day dispatch</span>
      <span class="ticker-item"><i class="fas fa-headset"></i> 24/7 human support</span>
      <span class="ticker-item"><i class="fas fa-lock"></i> Secure checkout</span>
      <!-- duplicate for seamless loop -->
      <span class="ticker-item"><i class="fas fa-truck-fast"></i> Free shipping over $50</span>
      <span class="ticker-item"><i class="fas fa-rotate-left"></i> 30-day easy returns</span>
      <span class="ticker-item"><i class="fas fa-shield-halved"></i> 2-year warranty</span>
      <span class="ticker-item"><i class="fas fa-bolt"></i> Same-day dispatch</span>
      <span class="ticker-item"><i class="fas fa-headset"></i> 24/7 human support</span>
      <span class="ticker-item"><i class="fas fa-lock"></i> Secure checkout</span>
    </div>
  </div>

  <!-- ===================== CATEGORIES ===================== -->
  <section class="section" id="categories">
    <div class="container">
      <div class="section-header reveal">
        <div class="title-group">
          <h2>Browse Categories</h2>
          <p>Find exactly what you're looking for</p>
        </div>
        <a href="#" class="view-all">All Categories <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
    </div>
  </section>

  <!-- ===================== PRODUCTS ===================== -->
  <section class="section" id="products">
    <div class="container">
      <div class="section-header reveal">
        <div class="title-group">
          <h2>Trending Now</h2>
          <p>What's hot — popular picks from our community</p>
        </div>
        <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="products-grid" id="productsGrid" aria-live="polite"></div>
    </div>
  </section>

  <!-- ===================== DEAL ===================== -->
  <section class="section" id="deals">
    <div class="container">
      <div class="section-header reveal">
        <div class="title-group">
          <h2>⚡ Flash Deal</h2>
          <p>Grab it before it's gone — limited stock</p>
        </div>
      </div>

      <div class="reveal">
        <div class="deal-wrap">
          <div class="deal-inner">
            <div class="deal-img">
              <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
            </div>
            <div class="deal-content">
              <span class="tag"><i class="fas fa-bolt"></i> Limited Offer</span>
              <h3>MacBook Air M2</h3>
              <p class="desc">Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>
              <div><span class="price-big">$999 <span class="old">$1,199</span></span></div>
              <p class="stock">Only <strong>12</strong> items left — hurry!</p>

              <div class="timer-grid">
                <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
                <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hours</div></div>
                <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Mins</div></div>
                <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Secs</div></div>
              </div>

              <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to Cart</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- ===================== TESTIMONIALS ===================== -->
  <section class="section" id="testimonials">
    <div class="container">
      <div class="section-header reveal">
        <div class="title-group">
          <h2>What Our Customers Say</h2>
          <p>Real reviews from real people</p>
        </div>
      </div>
      <div class="testimonials-scroll" id="testimonialsList"></div>
    </div>
  </section>

  <!-- ===================== NEWSLETTER ===================== -->
  <section class="section">
    <div class="container">
      <div class="newsletter-wrap reveal">
        <div class="text">
          <h3>Stay in the Loop</h3>
          <p>Get exclusive offers, early access &amp; new arrivals</p>
        </div>
        <form id="newsletterForm" onsubmit="return false;">
          <input type="email" id="newsletterEmail" placeholder="Enter your email" aria-label="Email" required />
          <button class="btn btn-primary" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
          <div id="newsletterMsg"></div>
        </form>
      </div>
    </div>
  </section>

</main>

<!-- ===================== FOOTER ===================== -->
<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="brand-col">
        <div class="brand"><i class="fas fa-store-alt"></i><span>Nexus<span class="accent">Shop</span></span></div>
        <p>Modern e-commerce demo built with care. Quality products, seamless experience.</p>
        <div class="socials">
          <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
          <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
          <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
          <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
        </div>
      </div>
      <div class="col">
        <h5>Company</h5>
        <ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Press</a></li><li><a href="#">Blog</a></li></ul>
      </div>
      <div class="col">
        <h5>Support</h5>
        <ul><li><a href="#">Help Center</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li><li><a href="#">Contact</a></li></ul>
      </div>
      <div class="col">
        <h5>Legal</h5>
        <ul><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li><li><a href="#">Cookies</a></li></ul>
      </div>
    </div>
    <div class="footer-bottom">&copy; <span id="year"></span> NexusShop. All rights reserved.</div>
  </div>
</footer>

<button class="back-to-top" id="backToTop" aria-label="Back to top"><i class="fas fa-arrow-up"></i></button>

<script>
/* ============================================================
   DATA
============================================================ */
const CATEGORIES = [
  { id:'phones',      name:'Smartphones', icon:'fa-mobile-alt',   count:24 },
  { id:'laptops',     name:'Laptops',     icon:'fa-laptop',       count:18 },
  { id:'clothing',    name:'Clothing',    icon:'fa-tshirt',       count:42 },
  { id:'gadgets',     name:'Gadgets',     icon:'fa-headphones',   count:31 },
  { id:'footwear',    name:'Footwear',    icon:'fa-shoe-prints',  count:27 },
  { id:'accessories', name:'Accessories', icon:'fa-watch',        count:39 }
];

const PRODUCTS = [
  { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, badge:'New',
    img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category:'Smartphones' },
  { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, badge:'',
    img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category:'Laptops' },
  { id:3, title:'Apple Watch Series 8', price:349, oldPrice:399, rating:5, reviews:214, badge:'Sale',
    img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category:'Accessories' },
  { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:53, badge:'',
    img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category:'Footwear' },
  { id:5, title:'Sony A7 IV Camera', price:2499, rating:5, reviews:42, badge:'New',
    img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category:'Gadgets' },
  { id:6, title:'Chanel No. 5', price:120, rating:5, reviews:189, badge:'',
    img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category:'Accessories' },
  { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, badge:'Sale',
    img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category:'Accessories' },
  { id:8, title:'Sony WH-1000XM5', price:399, rating:5, reviews:156, badge:'',
    img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category:'Gadgets' }
];

const TESTIMONIALS = [
  { name:'Ava Martin', role:'Verified Buyer', avatar:'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
    text:'Fast shipping and excellent support. The product exceeded my expectations!', stars:5 },
  { name:'Michael Lee', role:'Frequent Shopper', avatar:'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
    text:'Great selection and smooth checkout. Will definitely shop again.', stars:4 },
  { name:'Sophia Chen', role:'Designer', avatar:'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
    text:'Love the quality and the packaging. Everything arrived in perfect condition.', stars:5 },
  { name:'James Wilson', role:'Tech Enthusiast', avatar:'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
    text:'Amazing prices on electronics. The M2 MacBook deal was unbeatable.', stars:5 }
];

/* ============================================================
   STATE + REFS
============================================================ */
let cartCount = 0;

const categoriesGrid  = document.getElementById('categoriesGrid');
const productsGrid    = document.getElementById('productsGrid');
const testimonialsList= document.getElementById('testimonialsList');
const cartCountEl     = document.getElementById('cartCount');
const searchInput     = document.getElementById('searchInput');
const searchBtn       = document.getElementById('searchBtn');
const mobileToggle    = document.getElementById('mobileToggle');
const mobileMenu      = document.getElementById('mobileMenu');
const newsletterForm  = document.getElementById('newsletterForm');
const newsletterEmail = document.getElementById('newsletterEmail');
const newsletterMsg   = document.getElementById('newsletterMsg');
const header          = document.getElementById('siteHeader');
const progressBar     = document.getElementById('scrollProgress');
const backToTop       = document.getElementById('backToTop');
const hero            = document.getElementById('hero');
const heroSpotlight   = document.getElementById('heroSpotlight');

/* ============================================================
   SCROLL REVEAL
============================================================ */
const revealObserver = new IntersectionObserver((entries) => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      entry.target.classList.add('in-view');
      revealObserver.unobserve(entry.target);
    }
  });
}, { threshold: 0.12, rootMargin: '0px 0px -50px 0px' });

function observeReveals(root = document) {
  root.querySelectorAll('.reveal:not(.in-view)').forEach(el => {
    revealObserver.observe(el);
    el.addEventListener('animationend', function handler(){
      this.classList.remove('reveal','in-view');
      this.style.opacity = '';
      this.removeEventListener('animationend', handler);
    });
  });
}

/* ============================================================
   RENDERERS
============================================================ */
function renderCategories(){
  categoriesGrid.innerHTML = '';
  CATEGORIES.forEach((cat, i) => {
    const el = document.createElement('div');
    el.className = 'cat-card reveal';
    el.style.setProperty('--i', i);
    el.innerHTML = `
      <div class="icon-wrap"><i class="fas ${cat.icon}"></i></div>
      <h4>${cat.name}</h4>
      <div class="count">${cat.count} items</div>`;
    el.addEventListener('click', () => {
      searchInput.value = cat.name;
      filterProducts(cat.name);
      document.getElementById('products').scrollIntoView({ behavior:'smooth', block:'start' });
    });
    categoriesGrid.appendChild(el);
  });
  observeReveals(categoriesGrid);
}

function renderProducts(list){
  productsGrid.innerHTML = '';
  if (!list.length){
    productsGrid.innerHTML = `<p style="grid-column:1/-1;text-align:center;padding:48px;color:var(--muted);">No products found.</p>`;
    return;
  }
  list.forEach((p, i) => {
    const el = document.createElement('article');
    el.className = 'product-card reveal';
    el.style.setProperty('--i', i % 8);
    const badgeClass = p.badge === 'Sale' ? 'sale' : '';
    const badgeHtml  = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
    const oldPrice   = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : '';
    const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));

    el.innerHTML = `
      <div class="img-wrap">
        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
        ${badgeHtml}
        <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
      </div>
      <div class="body">
        <div class="category-tag">${p.category}</div>
        <h5>${escapeHtml(p.title)}</h5>
        <div class="price-row">
          <span class="price">$${p.price.toLocaleString()}</span>
          ${oldPrice}
        </div>
        <div class="rating">${stars} <span>(${p.reviews})</span></div>
      </div>
      <div class="footer">
        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
      </div>`;
    productsGrid.appendChild(el);
  });

  productsGrid.querySelectorAll('.add-btn').forEach(btn => {
    btn.addEventListener('click', function(e){
      e.stopPropagation();
      addToCart(Number(this.dataset.id), this);
    });
  });

  observeReveals(productsGrid);
}

function renderTestimonials(){
  testimonialsList.innerHTML = '';
  TESTIMONIALS.forEach((t, i) => {
    const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
    const el = document.createElement('div');
    el.className = 'testimonial-card reveal';
    el.style.setProperty('--i', i);
    el.innerHTML = `
      <div class="stars">${stars}</div>
      <blockquote>“${escapeHtml(t.text)}”</blockquote>
      <div class="author">
        <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
        <div>
          <div class="name">${escapeHtml(t.name)}</div>
          <div class="role">${escapeHtml(t.role)}</div>
        </div>
      </div>`;
    testimonialsList.appendChild(el);
  });
  observeReveals(testimonialsList);
}

/* ============================================================
   HELPERS
============================================================ */
function escapeHtml(text){
  return String(text).replace(/[&<>"']/g, s => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[s]));
}

function updateCartCount(){
  cartCountEl.textContent = cartCount;
  cartCountEl.classList.remove('pop');
  void cartCountEl.offsetWidth;
  cartCountEl.classList.add('pop');
}

function addToCart(productId, btnEl){
  const p = PRODUCTS.find(x => x.id === productId);
  if (!p) return;
  cartCount++;
  updateCartCount();

  if (btnEl){
    const orig = btnEl.innerHTML;
    btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
    btnEl.classList.add('added');
    setTimeout(() => {
      btnEl.innerHTML = orig;
      btnEl.classList.remove('added');
    }, 1500);
  }

  const cartBtn = document.getElementById('cartBtn');
  cartBtn.style.color = 'var(--accent)';
  cartBtn.style.filter = 'drop-shadow(0 0 10px rgba(41,151,255,.9))';
  setTimeout(() => { cartBtn.style.color = ''; cartBtn.style.filter = ''; }, 450);
}

function filterProducts(query){
  const q = String(query || '').trim().toLowerCase();
  if (!q) return renderProducts(PRODUCTS);
  renderProducts(PRODUCTS.filter(p =>
    p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q)
  ));
}

/* ============================================================
   DEAL TIMER (with flip animation)
============================================================ */
function setNum(el, value){
  if (el.textContent === value) return;
  el.textContent = value;
  el.classList.remove('flip');
  void el.offsetWidth;
  el.classList.add('flip');
}

(function setupDealTimer(){
  const target = new Date(Date.now() + (24 * 60 + 36) * 60 * 1000);
  const dEl = document.getElementById('dealDays');
  const hEl = document.getElementById('dealHours');
  const mEl = document.getElementById('dealMinutes');
  const sEl = document.getElementById('dealSeconds');

  function tick(){
    const diff = target - new Date();
    if (diff <= 0){
      setNum(dEl,'0'); setNum(hEl,'00'); setNum(mEl,'00'); setNum(sEl,'00');
      return;
    }
    const days  = Math.floor(diff / 86400000);
    const hours = Math.floor((diff % 86400000) / 3600000);
    const mins  = Math.floor((diff % 3600000) / 60000);
    const secs  = Math.floor((diff % 60000) / 1000);
    setNum(dEl, String(days));
    setNum(hEl, String(hours).padStart(2,'0'));
    setNum(mEl, String(mins).padStart(2,'0'));
    setNum(sEl, String(secs).padStart(2,'0'));
  }
  tick();
  setInterval(tick, 1000);
})();

/* ============================================================
   COUNT-UP STATS
============================================================ */
(function setupCounters(){
  const counters = document.querySelectorAll('[data-count]');
  const io = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (!entry.isIntersecting) return;
      const el = entry.target;
      io.unobserve(el);
      const target = Number(el.dataset.count);
      const suffix = el.dataset.suffix || '';
      const duration = 1600;
      const start = performance.now();

      function frame(now){
        const p = Math.min((now - start) / duration, 1);
        const eased = 1 - Math.pow(1 - p, 3);
        const value = Math.round(target * eased);
        el.textContent = (value >= 10000 ? Math.round(value/1000) + 'k' : value) + suffix;
        if (p < 1) requestAnimationFrame(frame);
        else el.textContent = (target >= 10000 ? Math.round(target/1000) + 'k' : target) + suffix;
      }
      requestAnimationFrame(frame);
    });
  }, { threshold: 0.5 });

  counters.forEach(c => io.observe(c));
})();

/* ============================================================
   HEADER / PROGRESS / BACK-TO-TOP / PARALLAX
============================================================ */
let lastScroll = 0;

window.addEventListener('scroll', () => {
  const y = window.scrollY;
  const max = document.documentElement.scrollHeight - window.innerHeight;
  progressBar.style.width = (max > 0 ? (y / max) * 100 : 0) + '%';

  if (y > lastScroll && y > 140) header.classList.add('hide');
  else header.classList.remove('hide');

  backToTop.classList.toggle('show', y > 620);
  lastScroll = y;
}, { passive: true });

backToTop.addEventListener('click', () => window.scrollTo({ top: 0, behavior: 'smooth' }));

// Hero spotlight + subtle parallax
if (hero){
  hero.addEventListener('mousemove', (e) => {
    const r = hero.getBoundingClientRect();
    const x = ((e.clientX - r.left) / r.width) * 100;
    const y = ((e.clientY - r.top) / r.height) * 100;
    heroSpotlight.style.setProperty('--mx', x + '%');
    heroSpotlight.style.setProperty('--my', y + '%');
    hero.style.setProperty('--mx', x + '%');
    hero.style.setProperty('--my', y + '%');
  });
}

/* ============================================================
   EVENT BINDINGS
============================================================ */
searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
searchInput.addEventListener('keydown', e => { if (e.key === 'Enter') filterProducts(e.target.value); });

mobileToggle.addEventListener('click', () => {
  const open = mobileMenu.style.display === 'block';
  mobileMenu.style.display = open ? 'none' : 'block';
  mobileToggle.innerHTML = open ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
});

mobileMenu.querySelectorAll('a').forEach(link => {
  link.addEventListener('click', () => {
    mobileMenu.style.display = 'none';
    mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
  });
});

document.getElementById('shopNow').addEventListener('click', () => {
  document.getElementById('products').scrollIntoView({ behavior:'smooth', block:'start' });
});
document.getElementById('exploreDeals').addEventListener('click', () => {
  document.getElementById('deals').scrollIntoView({ behavior:'smooth', block:'start' });
});

document.getElementById('buyDeal').addEventListener('click', function(){
  cartCount++;
  updateCartCount();
  const orig = this.innerHTML;
  this.innerHTML = '<i class="fas fa-check"></i> Added!';
  this.style.background = 'linear-gradient(135deg,#1f8f4e,#30d158)';
  setTimeout(() => {
    this.innerHTML = orig;
    this.style.background = '';
  }, 1600);
});

newsletterForm.addEventListener('submit', (e) => {
  e.preventDefault();
  const email = newsletterEmail.value.trim();
  if (!email || !email.includes('@')){
    newsletterMsg.textContent = 'Please enter a valid email address.';
    newsletterMsg.style.color = '#ff6b6b';
    return;
  }
  newsletterMsg.textContent = '🎉 Thanks for subscribing!';
  newsletterMsg.style.color = '#30d158';
  newsletterEmail.value = '';
  setTimeout(() => { newsletterMsg.textContent = ''; }, 3500);
});

document.getElementById('cartBtn').addEventListener('click', () => {
  alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
});

document.getElementById('year').textContent = new Date().getFullYear();

/* ============================================================
   INIT
============================================================ */
renderCategories();
renderProducts(PRODUCTS);
renderTestimonials();
updateCartCount();
observeReveals();

window.addEventListener('resize', () => {
  if (window.innerWidth > 768){
    mobileMenu.style.display = 'none';
    mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
  }
});

console.log('🌑 NexusShop dark animated build ready.');
</script>
</body>
</html>
