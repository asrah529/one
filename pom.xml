<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>StyleWithShama — Botanical Skincare & Beauty</title>
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,500;0,600;0,700;1,500&family=Plus+Jakarta+Sans:wght@400;500;600&display=swap" rel="stylesheet" />
  <style>
    :root {
      --bg: #fbf8f5;
      --surface: #ffffff;
      --surface-soft: #f4ede6;
      --ink: #241b18;
      --muted: #6e5d56;
      --accent: #b85d43;
      --accent-dark: #944630;
      --gold: #c99b63;
      --border: #e8ddd4;
      --radius: 16px;
      --shadow: 0 14px 34px rgba(36, 27, 24, 0.06);
    }

    * { box-sizing: border-box; margin: 0; padding: 0; }
    body {
      font-family: 'Plus Jakarta Sans', sans-serif;
      background: var(--bg);
      color: var(--ink);
      line-height: 1.6;
    }

    h1, h2, h3, .brand {
      font-family: 'Cormorant Garamond', serif;
      letter-spacing: -0.01em;
    }

    /* Top Promo Bar */
    .promo-bar {
      background: var(--ink);
      color: #f8efe8;
      text-align: center;
      font-size: 0.8rem;
      padding: 0.55rem 1rem;
      letter-spacing: 0.04em;
    }

    /* Navigation */
    header {
      position: sticky;
      top: 0;
      z-index: 40;
      background: rgba(251, 248, 245, 0.9);
      backdrop-filter: blur(12px);
      border-bottom: 1px solid var(--border);
    }

    .nav-wrap {
      max-width: 1200px;
      margin: 0 auto;
      padding: 1rem 1.5rem;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 1rem;
    }

    .brand {
      font-size: 1.85rem;
      font-weight: 700;
      color: var(--ink);
      text-decoration: none;
    }
    .brand span { color: var(--accent); font-style: italic; }

    .nav-links {
      display: flex;
      gap: 1.75rem;
      list-style: none;
    }
    .nav-links a {
      text-decoration: none;
      color: var(--muted);
      font-size: 0.92rem;
      font-weight: 500;
      transition: color 0.2s;
    }
    .nav-links a:hover { color: var(--accent); }

    .cart-btn {
      background: var(--ink);
      color: #fff;
      border: none;
      padding: 0.65rem 1.15rem;
      border-radius: 999px;
      font-size: 0.88rem;
      font-weight: 600;
      cursor: pointer;
      display: flex;
      align-items: center;
      gap: 0.5rem;
      transition: background 0.2s;
    }
    .cart-btn:hover { background: var(--accent); }

    /* Hero Section */
    .hero {
      max-width: 1200px;
      margin: 2.5rem auto;
      padding: 0 1.5rem;
      display: grid;
      grid-template-columns: 1.1fr 0.9fr;
      gap: 2.5rem;
      align-items: center;
    }

    .eyebrow {
      display: inline-block;
      font-size: 0.78rem;
      text-transform: uppercase;
      letter-spacing: 0.14em;
      color: var(--accent);
      font-weight: 600;
      margin-bottom: 0.75rem;
    }

    .hero h1 {
      font-size: clamp(2.6rem, 5vw, 4.1rem);
      line-height: 1.08;
      margin-bottom: 1.15rem;
    }

    .hero p {
      color: var(--muted);
      max-width: 48ch;
      margin-bottom: 1.75rem;
      font-size: 1.02rem;
    }

    .hero-actions { display: flex; gap: 1rem; flex-wrap: wrap; }

    .btn-primary {
      background: var(--accent);
      color: #fff;
      border: none;
      padding: 0.9rem 1.7rem;
      border-radius: 999px;
      font-weight: 600;
      font-size: 0.92rem;
      cursor: pointer;
      text-decoration: none;
      transition: background 0.2s, transform 0.15s;
    }
    .btn-primary:hover { background: var(--accent-dark); transform: translateY(-1px); }

    .btn-outline {
      background: transparent;
      color: var(--ink);
      border: 1px solid var(--border);
      padding: 0.9rem 1.6rem;
      border-radius: 999px;
      font-weight: 600;
      font-size: 0.92rem;
      text-decoration: none;
      transition: border-color 0.2s;
    }
    .btn-outline:hover { border-color: var(--ink); }

    .hero-visual {
      background: linear-gradient(145deg, #f1e3d8 0%, #e4cbb9 100%);
      border-radius: 28px;
      padding: 2.5rem;
      min-height: 410px;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
      position: relative;
      overflow: hidden;
      box-shadow: var(--shadow);
    }

    .bottle-art {
      width: 170px;
      height: 230px;
      margin: 1rem auto;
      border-radius: 26px 26px 18px 18px;
      background: linear-gradient(180deg, rgba(255,255,255,0.85), rgba(246,226,210,0.95));
      border: 1px solid rgba(255,255,255,0.9);
      box-shadow: 0 22px 40px rgba(120, 68, 46, 0.18);
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      text-align: center;
      padding: 1rem;
      position: relative;
    }
    .bottle-art::before {
      content: "";
      position: absolute;
      top: -26px;
      width: 48px;
      height: 26px;
      background: var(--gold);
      border-radius: 8px 8px 2px 2px;
    }
    .bottle-art small {
      font-size: 0.65rem;
      letter-spacing: 0.15em;
      text-transform: uppercase;
      color: var(--accent);
    }
    .bottle-art strong {
      font-family: 'Cormorant Garamond', serif;
      font-size: 1.35rem;
      line-height: 1.15;
      margin-top: 0.35rem;
    }

    .hero-badge {
      background: rgba(255, 255, 255, 0.85);
      backdrop-filter: blur(8px);
      padding: 0.85rem 1.15rem;
      border-radius: 14px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      font-size: 0.85rem;
    }

    /* Catalog Section */
    .catalog {
      max-width: 1200px;
      margin: 4rem auto;
      padding: 0 1.5rem;
    }

    .catalog-head {
      display: flex;
      justify-content: space-between;
      align-items: flex-end;
      flex-wrap: wrap;
      gap: 1rem;
      margin-bottom: 2rem;
    }

    .catalog-head h2 { font-size: 2.35rem; }

    .filters { display: flex; gap: 0.5rem; flex-wrap: wrap; }
    .filter-pill {
      border: 1px solid var(--border);
      background: var(--surface);
      color: var(--muted);
      padding: 0.5rem 1.05rem;
      border-radius: 999px;
      font-size: 0.85rem;
      font-weight: 500;
      cursor: pointer;
      transition: all 0.2s;
    }
    .filter-pill.active, .filter-pill:hover {
      background: var(--ink);
      color: #fff;
      border-color: var(--ink);
    }

    .grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
      gap: 1.5rem;
    }

    .card {
      background: var(--surface);
      border: 1px solid var(--border);
      border-radius: var(--radius);
      overflow: hidden;
      display: flex;
      flex-direction: column;
      transition: transform 0.2s, box-shadow 0.2s;
    }
    .card:hover {
      transform: translateY(-4px);
      box-shadow: var(--shadow);
    }

    .card-thumb {
      height: 210px;
      display: flex;
      align-items: center;
      justify-content: center;
      position: relative;
      padding: 1.25rem;
    }

    .tag {
      position: absolute;
      top: 12px;
      left: 12px;
      background: rgba(255,255,255,0.9);
      padding: 0.25rem 0.65rem;
      border-radius: 999px;
      font-size: 0.72rem;
      font-weight: 600;
      color: var(--accent);
    }

    .swatch-orb {
      width: 96px;
      height: 96px;
      border-radius: 50%;
      box-shadow: inset 0 -10px 20px rgba(0,0,0,0.12), 0 12px 24px rgba(36,27,24,0.12);
    }

    .card-body {
      padding: 1.25rem;
      display: flex;
      flex-direction: column;
      flex: 1;
    }

    .card-cat {
      font-size: 0.74rem;
      text-transform: uppercase;
      letter-spacing: 0.1em;
      color: var(--muted);
    }

    .card-title {
      font-size: 1.35rem;
      margin: 0.2rem 0 0.4rem;
    }

    .card-desc {
      font-size: 0.87rem;
      color: var(--muted);
      margin-bottom: 1.15rem;
      flex: 1;
    }

    .card-foot {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 0.75rem;
      padding-top: 0.85rem;
      border-top: 1px solid var(--border);
    }

    .price { font-weight: 600; font-size: 1rem; }

    .add-btn {
      background: var(--surface-soft);
      color: var(--ink);
      border: none;
      padding: 0.55rem 1rem;
      border-radius: 999px;
      font-size: 0.83rem;
      font-weight: 600;
      cursor: pointer;
      transition: background 0.2s, color 0.2s;
    }
    .add-btn:hover { background: var(--accent); color: #fff; }

    /* Ritual Banner */
    .ritual {
      max-width: 1200px;
      margin: 4rem auto;
      padding: 2.75rem;
      background: var(--surface-soft);
      border-radius: 24px;
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 2rem;
    }
    .ritual h3 { font-size: 1.45rem; margin-bottom: 0.4rem; }
    .ritual p { font-size: 0.9rem; color: var(--muted); }

    /* Cart Drawer */
    .drawer-backdrop {
      position: fixed;
      inset: 0;
      background: rgba(36, 27, 24, 0.45);
      display: none;
      justify-content: flex-end;
      z-index: 60;
    }
    .drawer-backdrop.open { display: flex; }

    .drawer {
      width: min(410px, 100%);
      background: var(--bg);
      height: 100%;
      padding: 1.75rem;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
    }

    .drawer-head {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding-bottom: 1rem;
      border-bottom: 1px solid var(--border);
    }

    .close-btn {
      background: none;
      border: none;
      font-size: 1.5rem;
      cursor: pointer;
      color: var(--ink);
    }

    .cart-items {
      flex: 1;
      overflow-y: auto;
      padding: 1rem 0;
      display: flex;
      flex-direction: column;
      gap: 0.9rem;
    }

    .cart-row {
      background: var(--surface);
      padding: 0.85rem 1rem;
      border-radius: 12px;
      border: 1px solid var(--border);
      display: flex;
      justify-content: space-between;
      align-items: center;
      gap: 0.75rem;
    }

    .qty-controls { display: flex; align-items: center; gap: 0.5rem; }
    .qty-controls button {
      width: 26px;
      height: 26px;
      border-radius: 50%;
      border: 1px solid var(--border);
      background: var(--bg);
      cursor: pointer;
    }

    .drawer-foot {
      border-top: 1px solid var(--border);
      padding-top: 1rem;
    }
    .total-row {
      display: flex;
      justify-content: space-between;
      font-weight: 600;
      font-size: 1.05rem;
      margin-bottom: 1rem;
    }

    footer {
      text-align: center;
      padding: 2.5rem 1rem;
      color: var(--muted);
      font-size: 0.85rem;
      border-top: 1px solid var(--border);
    }

    @media (max-width: 820px) {
      .hero, .ritual { grid-template-columns: 1fr; }
      .nav-links { display: none; }
    }
  </style>
</head>
<body>
  <div class="promo-bar">Complimentary Rosewater Mist on orders above ₹1,499 • Cruelty-Free & Dermatologist Tested</div>

  <header>
    <div class="nav-wrap">
      <a href="#" class="brand">StyleWith<span>Shama</span></a>
      <ul class="nav-links">
        <li><a href="#catalog">Shop All</a></li>
        <li><a href="#ritual">Our Philosophy</a></li>
      </ul>
      <button class="cart-btn" onclick="toggleCart(true)">
        Bag (<span id="cartCount">0</span>)
      </button>
    </div>
  </header>

  <section class="hero">
    <div>
      <span class="eyebrow">Small-Batch Botanical Beauty</span>
      <h1>Radiant skin, rooted in timeless rituals.</h1>
      <p>Thoughtfully formulated skincare and luminous everyday color crafted with saffron, squalane, and cold-pressed botanicals.</p>
      <div class="hero-actions">
        <a href="#catalog" class="btn-primary">Explore Collection</a>
        <a href="#ritual" class="btn-outline">Clean Ingredients</a>
      </div>
    </div>
    <div class="hero-visual">
      <div class="bottle-art">
        <small>StyleWithShama</small>
        <strong>Kumkumadi Glow Elixir</strong>
      </div>
      <div class="hero-badge">
        <span><strong>Bestseller</strong> • 30 ml Botanical Oil</span>
        <span>₹1,250</span>
      </div>
    </div>
  </section>

  <section class="catalog" id="catalog">
    <div class="catalog-head">
      <div>
        <span class="eyebrow">Curated Essentials</span>
        <h2>Shop Beauty & Skincare</h2>
      </div>
      <div class="filters" id="filterBar">
        <button class="filter-pill active" data-cat="All">All</button>
        <button class="filter-pill" data-cat="Skincare">Skincare</button>
        <button class="filter-pill" data-cat="Lip & Cheek">Lip & Cheek</button>
        <button class="filter-pill" data-cat="Hair Rituals">Hair Rituals</button>
      </div>
    </div>
    <div class="grid" id="productGrid"></div>
  </section>

  <section class="ritual" id="ritual">
    <div>
      <h3>100% Plant-Derived Actives</h3>
      <p>Cold-processed saffron, damask rose, and bakuchiol formulated without parabens, sulfates, or synthetic dyes.</p>
    </div>
    <div>
      <h3>Made for Indian Climates</h3>
      <p>Featherlight, non-comedogenic textures that hydrate deeply without feeling heavy in humid weather.</p>
    </div>
    <div>
      <h3>Refillable Glass Vessels</h3>
      <p>Every StyleWithShama jar and dropper bottle is recyclable and designed to elevate your daily vanity.</p>
    </div>
  </section>

  <footer>
    © 2026 StyleWithShama Beauty. Crafted with care.
  </footer>

  <!-- Slide-out Cart Drawer -->
  <div class="drawer-backdrop" id="cartDrawer" onclick="if(event.target===this) toggleCart(false)">
    <aside class="drawer">
      <div>
        <div class="drawer-head">
          <h3>Your Beauty Bag</h3>
          <button class="close-btn" onclick="toggleCart(false)">×</button>
        </div>
        <div class="cart-items" id="cartItems"></div>
      </div>
      <div class="drawer-foot">
        <div class="total-row">
          <span>Subtotal</span>
          <span id="cartTotal">₹0</span>
        </div>
        <button class="btn-primary" style="width:100%" onclick="checkout()">Proceed to Checkout</button>
      </div>
    </aside>
  </div>

  <script>
    const PRODUCTS = [
      { id: 1, name: "Kumkumadi Glow Elixir", cat: "Skincare", price: 1250, tag: "Bestseller", color: "radial-gradient(circle at 30% 30%, #f7c588, #c76b38)", bg: "#f6e7dc", desc: "Saffron & vetiver facial oil that brightens dullness overnight." },
      { id: 2, name: "Velvet Terracotta Lip Tint", cat: "Lip & Cheek", price: 790, tag: "New", color: "radial-gradient(circle at 30% 30%, #e07a68, #8c2f27)", bg: "#f5e1df", desc: "Whipped rosehip pigment for a soft-focus stain on lips and cheeks." },
      { id: 3, name: "Damask Rose Hydra Mist", cat: "Skincare", price: 650, tag: "Pure Distillate", color: "radial-gradient(circle at 30% 30%, #f9dce2, #d4899b)", bg: "#f7e7eb", desc: "Steam-distilled Kannauj rosewater to calm and balance pH." },
      { id: 4, name: "Hibiscus & Bhringraj Hair Nectar", cat: "Hair Rituals", price: 980, tag: "Strengthening", color: "radial-gradient(circle at 30% 30%, #a3b88c, #496138)", bg: "#e6ece1", desc: "Lightweight pre-wash scalp oil for shine and root vitality." },
      { id: 5, name: "Bakuchiol Peptide Night Cream", cat: "Skincare", price: 1420, tag: "Gentle Retinol", color: "radial-gradient(circle at 30% 30%, #f2e4d5, #bfa184)", bg: "#f1e8df", desc: "Plant-based retinol alternative that smooths fine lines gently." },
      { id: 6, name: "Champagne Dew Highlighter", cat: "Lip & Cheek", price: 890, tag: "Dewy Finish", color: "radial-gradient(circle at 30% 30%, #fff1d6, #cfa05e)", bg: "#f6eee0", desc: "Squalane-infused balm for a glass-skin sheen with zero glitter." }
    ];

    let activeCategory = "All";
    let cart = [];

    function renderProducts() {
      const grid = document.getElementById("productGrid");
      const filtered = activeCategory === "All" ? PRODUCTS : PRODUCTS.filter(p => p.cat === activeCategory);
      grid.innerHTML = filtered.map(p => `
        <article class="card">
          <div class="card-thumb" style="background:${p.bg}">
            <span class="tag">${p.tag}</span>
            <div class="swatch-orb" style="background:${p.color}"></div>
          </div>
          <div class="card-body">
            <span class="card-cat">${p.cat}</span>
            <h3 class="card-title">${p.name}</h3>
            <p class="card-desc">${p.desc}</p>
            <div class="card-foot">
              <span class="price">₹${p.price.toLocaleString("en-IN")}</span>
              <button class="add-btn" onclick="addToCart(${p.id})">+ Add to Bag</button>
            </div>
          </div>
        </article>
      `).join("");
    }

    function addToCart(id) {
      const existing = cart.find(item => item.id === id);
      if (existing) existing.qty += 1;
      else cart.push({ ...PRODUCTS.find(p => p.id === id), qty: 1 });
      updateCartUI();
      toggleCart(true);
    }

    function changeQty(id, delta) {
      const item = cart.find(i => i.id === id);
      if (!item) return;
      item.qty += delta;
      if (item.qty <= 0) cart = cart.filter(i => i.id !== id);
      updateCartUI();
    }

    function updateCartUI() {
      const count = cart.reduce((sum, i) => sum + i.qty, 0);
      const total = cart.reduce((sum, i) => sum + i.price * i.qty, 0);
      document.getElementById("cartCount").textContent = count;
      document.getElementById("cartTotal").textContent = `₹${total.toLocaleString("en-IN")}`;
      const container = document.getElementById("cartItems");
      container.innerHTML = cart.length ? cart.map(item => `
        <div class="cart-row">
          <div>
            <strong>${item.name}</strong>
            <div style="font-size:0.82rem;color:var(--muted)">₹${item.price.toLocaleString("en-IN")}</div>
          </div>
          <div class="qty-controls">
            <button onclick="changeQty(${item.id}, -1)">-</button>
            <span>${item.qty}</span>
            <button onclick="changeQty(${item.id}, 1)">+</button>
          </div>
        </div>
      `).join("") : `<p style="color:var(--muted);text-align:center;margin-top:2rem;">Your beauty bag is empty.</p>`;
    }

    function toggleCart(open) {
      document.getElementById("cartDrawer").classList.toggle("open", open);
    }

    function checkout() {
      if (!cart.length) return alert("Add a product to your bag first!");
      alert("Thank you for shopping with StyleWithShama! Your order summary has been created.");
      cart = [];
      updateCartUI();
      toggleCart(false);
    }

    document.getElementById("filterBar").addEventListener("click", (e) => {
      if (!e.target.matches(".filter-pill")) return;
      document.querySelectorAll(".filter-pill").forEach(b => b.classList.remove("active"));
      e.target.classList.add("active");
      activeCategory = e.target.dataset.cat;
      renderProducts();
    });

    renderProducts();
    updateCartUI();
  </script>
</body>
</html>
