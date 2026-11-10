<!DOCTYPE html>
<html lang="en" data-theme="white">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>NexusShop — Simple, friendly shopping</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
/* ===================== THEME TOKENS ===================== */
:root{
  --radius: 14px;
  --radius-sm: 10px;
  --maxw: 1180px;
  --ease: cubic-bezier(.4,0,.2,1);
}

html[data-theme="dark"]{
  --bg: #0b0d11;
  --surface: #14171d;
  --surface-2: #1b1f27;
  --surface-3: #232833;
  --text: #e9ecf1;
  --muted: #9aa3b2;
  --border: #262c37;
  --border-strong: #39414f;
  --accent: #6ea8fe;
  --accent-hover: #8dbdff;
  --accent-contrast: #04101f;
  --success: #4ade80;
  --danger: #f87171;
  --shadow: 0 12px 32px rgba(0,0,0,.55);
  --focus: 0 0 0 3px rgba(110,168,254,.35);
}

html[data-theme="light"]{
  --bg: #f5f7fa;
  --surface: #ffffff;
  --surface-2: #eef1f6;
  --surface-3: #e2e7f0;
  --text: #131720;
  --muted: #58616f;
  --border: #dde2ea;
  --border-strong: #c3cbd8;
  --accent: #2563eb;
  --accent-hover: #1d4ed8;
  --accent-contrast: #ffffff;
  --success: #15803d;
  --danger: #dc2626;
  --shadow: 0 12px 32px rgba(16,24,40,.12);
  --focus: 0 0 0 3px rgba(37,99,235,.28);
}

/* ===================== BASE ===================== */
*,*::before,*::after{ box-sizing:border-box; }

html{ scroll-behavior:smooth; }

body{
  margin:0;
  font-family:Inter, system-ui, -apple-system, "Segoe UI", Roboto, sans-serif;
  font-size:16px;
  line-height:1.55;
  background:var(--bg);
  color:var(--text);
  -webkit-font-smoothing:antialiased;
  transition: background-color .25s var(--ease), color .25s var(--ease);
}

h1,h2,h3,p{ margin:0; }

button, input, select{ font:inherit; color:inherit; }

button{ cursor:pointer; border:0; background:none; }

:focus-visible{
  outline:2px solid var(--accent);
  outline-offset:2px;
  border-radius:6px;
}

.container{
  width:100%;
  max-width:var(--maxw);
  margin:0 auto;
  padding:0 20px;
}

.visually-hidden{
  position:absolute !important;
  width:1px;height:1px;
  padding:0;margin:-1px;
  overflow:hidden;clip:rect(0 0 0 0);
  white-space:nowrap;border:0;
}

.skip-link{
  position:absolute; left:12px; top:-60px;
  z-index:200;
  background:var(--accent); color:var(--accent-contrast);
  padding:10px 16px; border-radius:0 0 10px 10px;
  font-weight:600; text-decoration:none;
  transition:top .2s var(--ease);
}
.skip-link:focus{ top:0; }

/* ===================== BUTTONS ===================== */
.btn{
  display:inline-flex; align-items:center; justify-content:center; gap:8px;
  min-height:44px; padding:0 18px;
  border-radius:var(--radius-sm);
  font-weight:600; font-size:.95rem;
  transition: background-color .18s var(--ease), transform .12s var(--ease), border-color .18s var(--ease);
  border:1px solid transparent;
}
.btn:active{ transform: scale(.98); }

.btn-primary{
  background:var(--accent); color:var(--accent-contrast);
}
.btn-primary:hover{ background:var(--accent-hover); }

.btn-ghost{
  background:transparent; color:var(--text);
  border-color:var(--border-strong);
}
.btn-ghost:hover{ background:var(--surface-2); }

.btn-block{ width:100%; }

.icon-btn{
  display:inline-flex; align-items:center; justify-content:center;
  width:44px; height:44px;
  border-radius:var(--radius-sm);
  background:var(--surface-2);
  border:1px solid var(--border);
  color:var(--text);
  transition: background-color .18s var(--ease), border-color .18s var(--ease);
}
.icon-btn:hover{ background:var(--surface-3); border-color:var(--border-strong); }

/* ===================== HEADER ===================== */
.site-header{
  position:sticky; top:0; z-index:50;
  background:color-mix(in srgb, var(--bg) 88%, transparent);
  backdrop-filter:blur(12px);
  border-bottom:1px solid var(--border);
}

.header-inner{
  display:flex; align-items:center; gap:12px;
  padding:12px 0;
  flex-wrap:wrap;
}

.brand{
  display:inline-flex; align-items:center; gap:10px;
  font-weight:800; font-size:1.15rem; letter-spacing:-.02em;
  color:var(--text); text-decoration:none;
  order:1;
}
.brand-mark{
  display:grid; place-items:center;
  width:34px; height:34px; border-radius:10px;
  background:linear-gradient(135deg, var(--accent), #8b5cf6);
  color:#fff; font-size:.95rem;
}

.header-actions{
  order:2; margin-left:auto;
  display:flex; align-items:center; gap:8px;
}

.cart-btn{
  position:relative;
  display:inline-flex; align-items:center; gap:8px;
  min-height:44px; padding:0 16px;
  border-radius:var(--radius-sm);
  background:var(--accent); color:var(--accent-contrast);
  font-weight:600;
  transition: background-color .18s var(--ease);
}
.cart-btn:hover{ background:var(--accent-hover); }

.cart-count{
  display:grid; place-items:center;
  min-width:22px; height:22px; padding:0 6px;
  border-radius:999px;
  background:rgba(0,0,0,.22);
  font-size:.78rem; font-weight:700;
}
html[data-theme="light"] .cart-count{ background:rgba(255,255,255,.28); }

/* Search */
.search-wrap{
  order:3; flex:1 1 100%;
  display:flex; align-items:center; gap:10px;
  padding:0 14px;
  min-height:46px;
  background:var(--surface-2);
  border:1px solid var(--border);
  border-radius:var(--radius-sm);
  transition: border-color .18s var(--ease), box-shadow .18s var(--ease);
}
.search-wrap:focus-within{
  border-color:var(--accent);
  box-shadow:var(--focus);
}
.search-wrap i{ color:var(--muted); font-size:.9rem; }
.search-wrap input{
  flex:1; min-width:0;
  background:none; border:0; outline:none;
  font-size:1rem; padding:12px 0;
}
.search-wrap input::placeholder{ color:var(--muted); }
.search-wrap input::-webkit-search-cancel-button{ display:none; }

.search-clear{
  display:grid; place-items:center;
  width:26px; height:26px; border-radius:50%;
  background:var(--surface-3); color:var(--muted);
  font-size:.8rem; flex:none;
}
.search-clear:hover{ color:var(--text); }

@media (min-width: 880px){
  .search-wrap{ order:2; flex:1 1 320px; max-width:520px; margin:0 12px; }
  .header-actions{ order:3; }
}

/* ===================== HERO ===================== */
.hero{
  padding:36px 0 8px;
  display:flex; flex-direction:column; gap:18px;
}
.hero h1{
  font-size:clamp(1.6rem, 1.1rem + 2vw, 2.4rem);
  line-height:1.2; letter-spacing:-.025em; font-weight:800;
}
.hero h1 span{
  background:linear-gradient(120deg, var(--accent), #a78bfa);
  -webkit-background-clip:text; background-clip:text;
  -webkit-text-fill-color:transparent;
}
.hero p{ color:var(--muted); max-width:56ch; }

.trust{
  display:flex; flex-wrap:wrap; gap:10px;
  list-style:none; padding:0; margin:4px 0 0;
}
.trust li{
  display:inline-flex; align-items:center; gap:8px;
  padding:8px 14px;
  background:var(--surface);
  border:1px solid var(--border);
  border-radius:999px;
  font-size:.86rem; color:var(--muted);
}
.trust i{ color:var(--success); }

/* ===================== TOOLBAR ===================== */
.toolbar{
  display:flex; flex-wrap:wrap; align-items:center; gap:14px;
  padding:22px 0 18px;
  border-bottom:1px solid var(--border);
  margin-bottom:24px;
}

.chips{
  display:flex; gap:8px; flex-wrap:wrap;
  flex:1 1 auto;
}

.chip{
  min-height:40px; padding:0 16px;
  border-radius:999px;
  background:var(--surface);
  border:1px solid var(--border);
  color:var(--muted);
  font-size:.9rem; font-weight:600;
  transition: all .18s var(--ease);
}
.chip:hover{ color:var(--text); border-color:var(--border-strong); }
.chip[aria-pressed="true"]{
  background:var(--accent); border-color:var(--accent);
  color:var(--accent-contrast);
}

.toolbar-right{
  display:flex; align-items:center; gap:12px;
  margin-left:auto;
}
.results-count{ font-size:.875rem; color:var(--muted); white-space:nowrap; }

.select-wrap{
  position:relative; display:inline-flex; align-items:center;
}
.select-wrap i{
  position:absolute; right:12px; pointer-events:none;
  font-size:.7rem; color:var(--muted);
}
select{
  appearance:none;
  min-height:40px; padding:0 34px 0 14px;
  background:var(--surface);
  border:1px solid var(--border);
  border-radius:var(--radius-sm);
  font-size:.9rem; font-weight:500;
  cursor:pointer;
}
select:hover{ border-color:var(--border-strong); }

/* ===================== GRID ===================== */
.grid{
  display:grid;
  grid-template-columns:repeat(auto-fill, minmax(230px, 1fr));
  gap:20px;
  padding-bottom:64px;
}

.card{
  display:flex; flex-direction:column;
  background:var(--surface);
  border:1px solid var(--border);
  border-radius:var(--radius);
  overflow:hidden;
  transition: transform .2s var(--ease), border-color .2s var(--ease), box-shadow .2s var(--ease);
}
.card:hover{
  transform:translateY(-3px);
  border-color:var(--border-strong);
  box-shadow:var(--shadow);
}

.thumb{
  display:grid; place-items:center;
  aspect-ratio:16/11;
  font-size:3.2rem;
  background:linear-gradient(140deg, var(--g1), var(--g2));
  position:relative;
}
.thumb::after{
  content:"";
  position:absolute; inset:0;
  background:radial-gradient(circle at 30% 20%, rgba(255,255,255,.28), transparent 60%);
}

.card-body{
  display:flex; flex-direction:column; gap:8px;
  padding:16px;
  flex:1;
}

.tag{
  align-self:flex-start;
  font-size:.72rem; font-weight:700;
  letter-spacing:.06em; text-transform:uppercase;
  color:var(--muted);
}

.card-title{
  font-size:1rem; font-weight:700; line-height:1.3;
  letter-spacing:-.01em;
}

.card-desc{
  font-size:.86rem; color:var(--muted);
  display:-webkit-box; -webkit-line-clamp:2; -webkit-box-orient:vertical;
  overflow:hidden;
}

.rating{
  display:inline-flex; align-items:center; gap:6px;
  font-size:.82rem; font-weight:600;
  color:var(--muted);
}
.rating i{ color:#f5b301; font-size:.78rem; }
.rating span{ font-weight:400; }

.card-foot{
  display:flex; align-items:center; justify-content:space-between; gap:12px;
  margin-top:auto; padding-top:10px;
}

.price{
  font-size:1.1rem; font-weight:800; letter-spacing:-.02em;
}

.btn-add{
  display:inline-flex; align-items:center; gap:7px;
  min-height:40px; padding:0 15px;
  border-radius:var(--radius-sm);
  background:var(--surface-2);
  border:1px solid var(--border-strong);
  color:var(--text);
  font-size:.88rem; font-weight:600;
  transition: all .18s var(--ease);
}
.btn-add:hover{ background:var(--accent); border-color:var(--accent); color:var(--accent-contrast); }
.btn-add.is-added{ background:var(--success); border-color:var(--success); color:#04160a; }

/* Empty state */
.empty{
  grid-column:1 / -1;
  display:flex; flex-direction:column; align-items:center; gap:10px;
  padding:64px 20px;
  text-align:center;
  background:var(--surface);
  border:1px dashed var(--border-strong);
  border-radius:var(--radius);
}
.empty .emoji{ font-size:2.2rem; }
.empty h3{ font-size:1.1rem; }
.empty p{ color:var(--muted); font-size:.92rem; max-width:42ch; }

/* ===================== CART DRAWER ===================== */
.overlay{
  position:fixed; inset:0; z-index:55;
  background:rgba(0,0,0,.55);
  opacity:0; pointer-events:none;
  transition:opacity .28s var(--ease);
}
.overlay.is-open{ opacity:1; pointer-events:auto; }

.cart-drawer{
  position:fixed; top:0; right:0; bottom:0; z-index:60;
  width:min(420px, 100%);
  display:flex; flex-direction:column;
  background:var(--surface);
  border-left:1px solid var(--border);
  transform:translateX(100%);
  visibility:hidden;
  transition:transform .3s var(--ease), visibility 0s linear .3s;
}
.cart-drawer.is-open{
  transform:none;
  visibility:visible;
  transition:transform .3s var(--ease), visibility 0s;
}

.cart-head{
  display:flex; align-items:center; justify-content:space-between;
  gap:12px; padding:16px 20px;
  border-bottom:1px solid var(--border);
}
.cart-head h2{ font-size:1.1rem; font-weight:700; }

.cart-ship{
  padding:14px 20px;
  border-bottom:1px solid var(--border);
  font-size:.84rem; color:var(--muted);
}
.ship-track{
  height:6px; margin-top:10px;
  background:var(--surface-3);
  border-radius:999px; overflow:hidden;
}
.ship-fill{
  height:100%; width:0%;
  background:linear-gradient(90deg, var(--accent), #34d399);
  border-radius:999px;
  transition:width .3s var(--ease);
}
.ship-fill.done{ background:var(--success); }

.cart-items{
  flex:1; overflow-y:auto;
  padding:8px 20px;
}

.cart-item{
  display:grid;
  grid-template-columns:64px 1fr auto;
  gap:12px; align-items:start;
  padding:16px 0;
  border-bottom:1px solid var(--border);
}
.cart-item:last-child{ border-bottom:0; }

.thumb-sm{
  width:64px; height:64px;
  aspect-ratio:auto;
  border-radius:var(--radius-sm);
  font-size:1.6rem;
}

.ci-name{ font-size:.9rem; font-weight:600; line-height:1.35; }
.ci-price{ font-size:.85rem; color:var(--muted); margin-top:2px; }

.qty{
  display:inline-flex; align-items:center; gap:2px;
  margin-top:8px;
  border:1px solid var(--border);
  border-radius:999px;
  overflow:hidden;
}
.qty-btn{
  display:grid; place-items:center;
  width:32px; height:32px;
  font-size:.9rem; font-weight:700;
  color:var(--muted);
  transition: background-color .15s var(--ease), color .15s var(--ease);
}
.qty-btn:hover{ background:var(--surface-2); color:var(--text); }
.qty-val{
  min-width:26px; text-align:center;
  font-size:.85rem; font-weight:700;
}

.ci-remove{
  display:grid; place-items:center;
  width:34px; height:34px;
  border-radius:8px;
  color:var(--muted);
  transition: all .15s var(--ease);
}
.ci-remove:hover{ color:var(--danger); background:var(--surface-2); }

.cart-empty{
  display:flex; flex-direction:column; align-items:center; gap:10px;
  padding:56px 12px; text-align:center;
  color:var(--muted);
}
.cart-empty .emoji{ font-size:2.2rem; }

.cart-foot{
  padding:18px 20px calc(18px + env(safe-area-inset-bottom));
  border-top:1px solid var(--border);
  background:var(--surface);
  display:flex; flex-direction:column; gap:10px;
}
.cart-row{
  display:flex; align-items:center; justify-content:space-between;
  font-size:1rem;
}
.cart-row strong{ font-size:1.2rem; font-weight:800; }
.cart-note{ font-size:.78rem; color:var(--muted); }

/* ===================== TOAST ===================== */
.toast-stack{
  position:fixed; left:50%; bottom:24px;
  transform:translateX(-50%);
  z-index:120;
  display:flex; flex-direction:column; gap:8px; align-items:center;
  pointer-events:none;
  width:max-content; max-width:calc(100% - 32px);
}
.toast{
  display:flex; align-items:center; gap:10px;
  padding:12px 18px;
  border-radius:999px;
  background:var(--surface-3);
  border:1px solid var(--border-strong);
  box-shadow:var(--shadow);
  font-size:.88rem; font-weight:500;
  animation:toast-in .25s var(--ease);
}
.toast i{ color:var(--success); }
@keyframes toast-in{
  from{ opacity:0; transform:translateY(10px) scale(.97); }
  to{ opacity:1; transform:none; }
}

/* ===================== RESPONSIVE ===================== */
@media (max-width: 640px){
  .hero{ padding-top:26px; }
  .grid{ grid-template-columns:repeat(auto-fill, minmax(160px, 1fr)); gap:14px; }
  .card-body{ padding:13px; }
  .thumb{ font-size:2.4rem; }
  .card-desc{ display:none; }
  .btn-add{ padding:0 12px; }
  .toolbar-right{ width:100%; justify-content:space-between; margin-left:0; }
  .results-count{ display:none; }
}

/* ===================== REDUCED MOTION ===================== */
@media (prefers-reduced-motion: reduce){
  *, *::before, *::after{
    animation-duration:.001ms !important;
    animation-iteration-count:1 !important;
    transition-duration:.001ms !important;
    scroll-behavior:auto !important;
  }
}
</style>
</head>

<body>
<a class="skip-link" href="#main">Skip to products</a>

<!-- ================= HEADER ================= -->
<header class="site-header">
  <div class="container header-inner">
    <a class="brand" href="#main">
      <span class="brand-mark" aria-hidden="true"><i class="fa-solid fa-cube"></i></span>
      NexusShop
    </a>

    <div class="search-wrap">
      <i class="fa-solid fa-magnifying-glass" aria-hidden="true"></i>
      <label class="visually-hidden" for="search">Search products</label>
      <input id="search" type="search" placeholder="Search headphones, keyboards…" autocomplete="off">
      <button class="search-clear" id="searchClear" type="button" aria-label="Clear search" hidden>
        <i class="fa-solid fa-xmark" aria-hidden="true"></i>
      </button>
    </div>

    <div class="header-actions">
      <button class="icon-btn" id="themeToggle" type="button"
              aria-label="Switch to light theme" aria-pressed="false">
        <i class="fa-solid fa-sun" aria-hidden="true"></i>
      </button>
      <button class="cart-btn" id="cartBtn" type="button" aria-label="Open cart, 0 items">
        <i class="fa-solid fa-bag-shopping" aria-hidden="true"></i>
        <span class="cart-count" id="cartCount">0</span>
      </button>
    </div>
  </div>
</header>

<!-- ================= MAIN ================= -->
<main id="main">
  <div class="container">

    <section class="hero">
      <h1>Gear that works as hard as <span>you do.</span></h1>
      <p>Hand-picked tech essentials with honest pricing, free shipping over $75, and easy 30-day returns.</p>
      <ul class="trust">
        <li><i class="fa-solid fa-truck-fast" aria-hidden="true"></i> Free shipping over $75</li>
        <li><i class="fa-solid fa-rotate-left" aria-hidden="true"></i> 30-day returns</li>
        <li><i class="fa-solid fa-shield-halved" aria-hidden="true"></i> 2-year warranty</li>
      </ul>
    </section>

    <!-- Toolbar -->
    <div class="toolbar">
      <div class="chips" role="group" aria-label="Filter by category" id="chips">
        <button class="chip" type="button" data-cat="All" aria-pressed="true">All</button>
        <button class="chip" type="button" data-cat="Audio" aria-pressed="false">Audio</button>
        <button class="chip" type="button" data-cat="Wearables" aria-pressed="false">Wearables</button>
        <button class="chip" type="button" data-cat="Desk" aria-pressed="false">Desk</button>
        <button class="chip" type="button" data-cat="Lighting" aria-pressed="false">Lighting</button>
        <button class="chip" type="button" data-cat="Accessories" aria-pressed="false">Accessories</button>
      </div>

      <div class="toolbar-right">
        <span class="results-count" id="resultsCount" aria-live="polite">10 products</span>
        <div class="select-wrap">
          <label class="visually-hidden" for="sort">Sort products</label>
          <select id="sort">
            <option value="featured">Featured</option>
            <option value="price-asc">Price: low to high</option>
            <option value="price-desc">Price: high to low</option>
            <option value="rating">Top rated</option>
            <option value="name">Name (A–Z)</option>
          </select>
          <i class="fa-solid fa-chevron-down" aria-hidden="true"></i>
        </div>
      </div>
    </div>

    <!-- Product grid -->
    <section class="grid" id="grid" aria-label="Products"></section>
  </div>
</main>

<!-- ================= CART ================= -->
<div class="overlay" id="overlay"></div>

<aside class="cart-drawer" id="cartDrawer" role="dialog" aria-modal="true"
       aria-labelledby="cartTitle" aria-hidden="true">
  <header class="cart-head">
    <h2 id="cartTitle">Your cart</h2>
    <button class="icon-btn" id="cartClose" type="button" aria-label="Close cart">
      <i class="fa-solid fa-xmark" aria-hidden="true"></i>
    </button>
  </header>

  <div class="cart-ship" id="cartShip" hidden>
    <span id="shipText"></span>
    <div class="ship-track"><div class="ship-fill" id="shipFill"></div></div>
  </div>

  <div class="cart-items" id="cartItems"></div>

  <footer class="cart-foot">
    <div class="cart-row">
      <span>Subtotal</span>
      <strong id="cartSubtotal">$0.00</strong>
    </div>
    <p class="cart-note">Taxes and shipping calculated at checkout.</p>
    <button class="btn btn-primary btn-block" id="checkoutBtn" type="button">
      <i class="fa-solid fa-lock" aria-hidden="true"></i> Checkout
    </button>
    <button class="btn btn-ghost btn-block" id="continueBtn" type="button">Continue shopping</button>
  </footer>
</aside>

<!-- Live region + toasts -->
<div class="toast-stack" id="toastStack" aria-live="polite" aria-atomic="false"></div>
<p class="visually-hidden" id="srStatus" role="status" aria-live="polite"></p>

<script>
(() => {
  "use strict";

  /* ===================== DATA ===================== */
  const MAX_QTY = 10;
  const FREE_SHIPPING = 75;

  const PRODUCTS = [
    { id:"p1",  name:"Aurora Wireless Headphones", cat:"Audio",       price:129, rating:4.8, reviews:128, emoji:"🎧", g:["#3b82f6","#8b5cf6"], desc:"Active noise cancelling with a 40-hour battery." },
    { id:"p2",  name:"Pulse Earbuds Pro",          cat:"Audio",       price:89,  rating:4.6, reviews:214, emoji:"🎵", g:["#06b6d4","#3b82f6"], desc:"Compact buds with adaptive EQ and a pocket case." },
    { id:"p3",  name:"Nova Smartwatch",            cat:"Wearables",   price:199, rating:4.7, reviews:96,  emoji:"⌚", g:["#8b5cf6","#ec4899"], desc:"Heart-rate tracking with a 7-day battery life." },
    { id:"p4",  name:"Glide Ergonomic Mouse",      cat:"Desk",        price:59,  rating:4.5, reviews:341, emoji:"🖱️", g:["#22c55e","#0ea5e9"], desc:"Vertical grip that keeps your wrist relaxed all day." },
    { id:"p5",  name:"Tactile Mechanical Keyboard",cat:"Desk",        price:149, rating:4.9, reviews:187, emoji:"⌨️", g:["#f59e0b","#ef4444"], desc:"Hot-swappable switches with quiet stabilizers." },
    { id:"p6",  name:"Halo Desk Lamp",             cat:"Lighting",    price:79,  rating:4.4, reviews:63,  emoji:"💡", g:["#fbbf24","#f97316"], desc:"Adjustable warmth with smooth touch dimming." },
    { id:"p7",  name:"Nomad Tech Backpack",        cat:"Accessories", price:119, rating:4.6, reviews:152, emoji:"🎒", g:["#64748b","#0f172a"], desc:"Weatherproof shell with a padded 16-inch sleeve." },
    { id:"p8",  name:"Volt 100W GaN Charger",      cat:"Accessories", price:45,  rating:4.3, reviews:402, emoji:"🔌", g:["#14b8a6","#3b82f6"], desc:"Charges a laptop and phone at the same time." },
    { id:"p9",  name:"Lens 4K Webcam",             cat:"Desk",        price:139, rating:4.2, reviews:88,  emoji:"📷", g:["#a855f7","#6366f1"], desc:"Crisp 4K video with auto light correction." },
    { id:"p10", name:"Bloom Bluetooth Speaker",    cat:"Audio",       price:69,  rating:4.5, reviews:176, emoji:"🔊", g:["#ef4444","#f59e0b"], desc:"Room-filling sound in a pocketable frame." }
  ];

  /* ===================== STATE ===================== */
  const state = {
    cart: new Map(),      // id -> qty
    q: "",
    cat: "All",
    sort: "featured"
  };

  const CART_KEY  = "nexus.cart.v1";
  const THEME_KEY = "nexus.theme.v1";

  /* ===================== HELPERS ===================== */
  const $  = (sel, root = document) => root.querySelector(sel);
  const $$ = (sel, root = document) => Array.from(root.querySelectorAll(sel));
  const money = n => "$" + n.toFixed(2);
  const byId = id => PRODUCTS.find(p => p.id === id);
  const store = {
    get(k){ try { return localStorage.getItem(k); } catch { return null; } },
    set(k, v){ try { localStorage.setItem(k, v); } catch {} }
  };

  /* ===================== DOM ===================== */
  const grid          = $("#grid");
  const chips         = $("#chips");
  const search        = $("#search");
  const searchClear   = $("#searchClear");
  const sortSelect    = $("#sort");
  const resultsCount  = $("#resultsCount");
  const cartBtn       = $("#cartBtn");
  const cartCount     = $("#cartCount");
  const cartDrawer    = $("#cartDrawer");
  const cartClose     = $("#cartClose");
  const cartItemsEl   = $("#cartItems");
  const cartSubtotal  = $("#cartSubtotal");
  const cartShip      = $("#cartShip");
  const shipText      = $("#shipText");
  const shipFill      = $("#shipFill");
  const overlay       = $("#overlay");
  const checkoutBtn   = $("#checkoutBtn");
  const continueBtn   = $("#continueBtn");
  const themeToggle   = $("#themeToggle");
  const toastStack    = $("#toastStack");
  const srStatus      = $("#srStatus");

  let lastFocused = null;

  /* ===================== THEME ===================== */
  function applyTheme(theme){
    document.documentElement.dataset.theme = theme;
    const isDark = theme === "dark";
    themeToggle.setAttribute("aria-pressed", String(!isDark));
    themeToggle.setAttribute("aria-label", isDark ? "Switch to light theme" : "Switch to dark theme");
    themeToggle.innerHTML = isDark
      ? '<i class="fa-solid fa-sun" aria-hidden="true"></i>'
      : '<i class="fa-solid fa-moon" aria-hidden="true"></i>';
    store.set(THEME_KEY, theme);
  }

  function initTheme(){
    const saved = store.get(THEME_KEY);
    if (saved === "dark" || saved === "light") return applyTheme(saved);
    const prefersLight = window.matchMedia("(prefers-color-scheme: light)").matches;
    applyTheme(prefersLight ? "light" : "dark");
  }

  themeToggle.addEventListener("click", () => {
    applyTheme(document.documentElement.dataset.theme === "dark" ? "light" : "dark");
  });

  /* ===================== CART STORAGE ===================== */
  function loadCart(){
    try {
      const raw = store.get(CART_KEY);
      if (!raw) return;
      const arr = JSON.parse(raw);
      if (!Array.isArray(arr)) return;
      arr.forEach(entry => {
        if (!Array.isArray(entry)) return;
        const [id, qty] = entry;
        if (byId(id) && Number.isFinite(qty) && qty > 0){
          state.cart.set(id, Math.min(Math.floor(qty), MAX_QTY));
        }
      });
    } catch {}
  }

  function saveCart(){
    store.set(CART_KEY, JSON.stringify([...state.cart]));
  }

  /* ===================== TOASTS ===================== */
  function toast(message){
    const el = document.createElement("div");
    el.className = "toast";
    el.innerHTML = '<i class="fa-solid fa-circle-check" aria-hidden="true"></i><span></span>';
    el.lastElementChild.textContent = message;
    toastStack.appendChild(el);
    setTimeout(() => {
      el.style.opacity = "0";
      el.style.transform = "translateY(8px)";
      el.style.transition = "opacity .2s, transform .2s";
      setTimeout(() => el.remove(), 220);
    }, 2400);
  }

  function announce(message){
    srStatus.textContent = "";
    setTimeout(() => { srStatus.textContent = message; }, 60);
  }

  /* ===================== PRODUCT RENDERING ===================== */
  function getVisibleProducts(){
    const q = state.q.trim().toLowerCase();

    let list = PRODUCTS.filter(p => {
      const matchesCat = state.cat === "All" || p.cat === state.cat;
      const matchesQ = !q ||
        p.name.toLowerCase().includes(q) ||
        p.cat.toLowerCase().includes(q) ||
        p.desc.toLowerCase().includes(q);
      return matchesCat && matchesQ;
    });

    switch (state.sort){
      case "price-asc":  list.sort((a,b) => a.price - b.price); break;
      case "price-desc": list.sort((a,b) => b.price - a.price); break;
      case "rating":     list.sort((a,b) => b.rating - a.rating); break;
      case "name":       list.sort((a,b) => a.name.localeCompare(b.name)); break;
    }
    return list;
  }

  function cardHTML(p){
    return `
      <article class="card">
        <div class="thumb" style="--g1:${p.g[0]};--g2:${p.g[1]}" aria-hidden="true">${p.emoji}</div>
        <div class="card-body">
          <span class="tag">${p.cat}</span>
          <h3 class="card-title">${p.name}</h3>
          <p class="card-desc">${p.desc}</p>
          <p class="rating">
            <i class="fa-solid fa-star" aria-hidden="true"></i>
            ${p.rating.toFixed(1)}
            <span>(${p.reviews} reviews)</span>
          </p>
          <div class="card-foot">
            <span class="price">${money(p.price)}</span>
            <button class="btn-add" type="button" data-add="${p.id}"
                    aria-label="Add ${p.name} to cart">
              <i class="fa-solid fa-plus" aria-hidden="true"></i> Add
            </button>
          </div>
        </div>
      </article>
    `;
  }

  function renderProducts(){
    const list = getVisibleProducts();

    resultsCount.textContent = `${list.length} product${list.length === 1 ? "" : "s"}`;

    if (!list.length){
      grid.innerHTML = `
        <div class="empty">
          <span class="emoji" aria-hidden="true">🔍</span>
          <h3>No products found</h3>
          <p>We couldn't find anything matching your search. Try a different term or clear the filters.</p>
          <button class="btn btn-primary" type="button" id="resetFilters">Reset filters</button>
        </div>`;
      return;
    }

    grid.innerHTML = list.map(cardHTML).join("");
  }

  /* ===================== CART RENDERING ===================== */
  function cartEntries(){
    return [...state.cart.entries()]
      .map(([id, qty]) => ({ product: byId(id), qty }))
      .filter(e => e.product);
  }

  function cartTotalItems(){
    let n = 0;
    state.cart.forEach(q => n += q);
    return n;
  }

  function cartSubtotalValue(){
    return cartEntries().reduce((sum, e) => sum + e.product.price * e.qty, 0);
  }

  function renderCartBadge(){
    const n = cartTotalItems();
    cartCount.textContent = n;
    cartBtn.setAttribute("aria-label", `Open cart, ${n} item${n === 1 ? "" : "s"}`);
  }

  function renderCart(){
    const entries = cartEntries();
    const subtotal = cartSubtotalValue();

    /* --- Badge --- */
    renderCartBadge();

    /* --- Items --- */
    if (!entries.length){
      cartItemsEl.innerHTML = `
        <div class="cart-empty">
          <span class="emoji" aria-hidden="true">🛍️</span>
          <p><strong>Your cart is empty</strong></p>
          <p>Browse the collection and add something you like.</p>
        </div>`;
    } else {
      cartItemsEl.innerHTML = entries.map(({ product: p, qty }) => `
        <div class="cart-item">
          <div class="thumb thumb-sm" style="--g1:${p.g[0]};--g2:${p.g[1]}" aria-hidden="true">${p.emoji}</div>
          <div>
            <p class="ci-name">${p.name}</p>
            <p class="ci-price">${money(p.price)}</p>
            <div class="qty">
              <button class="qty-btn" type="button" data-id="${p.id}" data-act="dec"
                      aria-label="Decrease quantity of ${p.name}">−</button>
              <span class="qty-val" aria-label="Quantity">${qty}</span>
              <button class="qty-btn" type="button" data-id="${p.id}" data-act="inc"
                      aria-label="Increase quantity of ${p.name}">+</button>
            </div>
          </div>
          <button class="ci-remove" type="button" data-id="${p.id}" data-act="remove"
                  aria-label="Remove ${p.name} from cart">
            <i class="fa-solid fa-trash-can" aria-hidden="true"></i>
          </button>
        </div>
      `).join("");
    }

    /* --- Subtotal --- */
    cartSubtotal.textContent = money(subtotal);

    /* --- Free shipping progress --- */
    if (entries.length){
      cartShip.hidden = false;
      const remaining = Math.max(0, FREE_SHIPPING - subtotal);
      const pct = Math.min(100, (subtotal / FREE_SHIPPING) * 100);
      shipFill.style.width = pct + "%";
      shipFill.classList.toggle("done", remaining === 0);
      shipText.textContent = remaining === 0
        ? "🎉 You've unlocked free shipping!"
        : `Add ${money(remaining)} more for free shipping`;
    } else {
      cartShip.hidden = true;
    }

    /* --- Checkout availability --- */
    checkoutBtn.disabled = entries.length === 0;
    checkoutBtn.style.opacity = entries.length === 0 ? ".5" : "1";
    checkoutBtn.style.cursor = entries.length === 0 ? "not-allowed" : "pointer";
  }

  /* ===================== CART ACTIONS ===================== */
  function addToCart(id, btn){
    const product = byId(id);
    if (!product) return;

    const current = state.cart.get(id) || 0;
    if (current >= MAX_QTY){
      toast(`Max ${MAX_QTY} per item for ${product.name}`);
      return;
    }

    state.cart.set(id, current + 1);
    saveCart();
    renderCart();
    toast(`${product.name} added to cart`);
    announce(`${product.name} added to cart. ${cartTotalItems()} items in cart.`);

    if (btn){
      const original = btn.innerHTML;
      btn.innerHTML = '<i class="fa-solid fa-check" aria-hidden="true"></i> Added';
      btn.classList.add("is-added");
      setTimeout(() => {
        btn.innerHTML = original;
        btn.classList.remove("is-added");
      }, 1200);
    }
  }

  function changeQty(id, delta){
    const current = state.cart.get(id) || 0;
    const next = current + delta;

    if (next <= 0){
      state.cart.delete(id);
    } else if (next > MAX_QTY){
      toast(`Max ${MAX_QTY} per item`);
      return;
    } else {
      state.cart.set(id, next);
    }

    saveCart();
    renderCart();
  }

  function removeItem(id){
    const product = byId(id);
    state.cart.delete(id);
    saveCart();
    renderCart();
    if (product) toast(`${product.name} removed`);
  }

  /* ===================== DRAWER ===================== */
  function openCart(){
    lastFocused = document.activeElement;
    cartDrawer.classList.add("is-open");
    overlay.classList.add("is-open");
    cartDrawer.setAttribute("aria-hidden", "false");
    document.body.style.overflow = "hidden";
    setTimeout(() => cartClose.focus(), 60);
  }

  function closeCart(){
    cartDrawer.classList.remove("is-open");
    overlay.classList.remove("is-open");
    cartDrawer.setAttribute("aria-hidden", "true");
    document.body.style.overflow = "";
    if (lastFocused && typeof lastFocused.focus === "function") lastFocused.focus();
  }

  /* Focus trap inside the drawer */
  function trapFocus(e){
    if (e.key !== "Tab" || !cartDrawer.classList.contains("is-open")) return;

    const focusables = $$(
      'button:not([disabled]), [href], input, select, textarea, [tabindex]:not([tabindex="-1"])',
      cartDrawer
    ).filter(el => el.offsetParent !== null);

    if (!focusables.length) return;

    const first = focusables[0];
    const last  = focusables[focusables.length - 1];

    if (e.shiftKey && document.activeElement === first){
      e.preventDefault();
      last.focus();
    } else if (!e.shiftKey && document.activeElement === last){
      e.preventDefault();
      first.focus();
    }
  }

  /* ===================== EVENTS ===================== */
  grid.addEventListener("click", e => {
    const addBtn = e.target.closest("[data-add]");
    if (addBtn){
      addToCart(addBtn.dataset.add, addBtn);
      return;
    }
    if (e.target.closest("#resetFilters")){
      state.q = "";
      state.cat = "All";
      search.value = "";
      searchClear.hidden = true;
      $$(".chip", chips).forEach(c =>
        c.setAttribute("aria-pressed", String(c.dataset.cat === "All"))
      );
      renderProducts();
      announce("Filters reset");
    }
  });

  chips.addEventListener("click", e => {
    const chip = e.target.closest(".chip");
    if (!chip) return;
    state.cat = chip.dataset.cat;
    $$(".chip", chips).forEach(c =>
      c.setAttribute("aria-pressed", String(c === chip))
    );
    renderProducts();
  });

  let searchTimer;
  search.addEventListener("input", () => {
    clearTimeout(searchTimer);
    searchTimer = setTimeout(() => {
      state.q = search.value;
      searchClear.hidden = search.value.length === 0;
      renderProducts();
    }, 120);
  });

  searchClear.addEventListener("click", () => {
    search.value = "";
    state.q = "";
    searchClear.hidden = true;
    search.focus();
    renderProducts();
  });

  sortSelect.addEventListener("change", () => {
    state.sort = sortSelect.value;
    renderProducts();
  });

  cartItemsEl.addEventListener("click", e => {
    const btn = e.target.closest("[data-act]");
    if (!btn) return;

    const id = btn.dataset.id;
    const act = btn.dataset.act;

    if (act === "inc") changeQty(id, 1);
    else if (act === "dec") changeQty(id, -1);
    else if (act === "remove") removeItem(id);
  });

  cartBtn.addEventListener("click", openCart);
  cartClose.addEventListener("click", closeCart);
  overlay.addEventListener("click", closeCart);
  continueBtn.addEventListener("click", closeCart);

  checkoutBtn.addEventListener("click", () => {
    if (!cartEntries().length) return;
    toast("Demo store — no payment will be taken 🙂");
  });

  document.addEventListener("keydown", e => {
    if (e.key === "Escape" && cartDrawer.classList.contains("is-open")) closeCart();
    trapFocus(e);
  });

  /* ===================== INIT ===================== */
  initTheme();
  loadCart();
  renderProducts();
  renderCart();
})();
</script>
</body>
</html>
