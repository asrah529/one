<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NexusShop — Apple-inspired</title>
  <!-- Apple-style fonts & icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    /* ========== APPLE-INSPIRED GLOBAL ========== */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
      background: #ffffff;
      color: #1d1d1f;
      line-height: 1.47059;
      letter-spacing: -0.022em;
      -webkit-font-smoothing: antialiased;
      -moz-osx-font-smoothing: grayscale;
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    img {
      display: block;
      max-width: 100%;
    }

    button {
      cursor: pointer;
      font-family: inherit;
      border: none;
      background: none;
      color: inherit;
    }

    input {
      font-family: inherit;
    }

    .container {
      width: 100%;
      max-width: 1200px;
      margin: 0 auto;
      padding: 0 22px;
    }

    /* ========== TYPOGRAPHY ========== */
    h1, h2, h3, h4, h5 {
      font-weight: 600;
      letter-spacing: -0.03em;
      line-height: 1.1;
    }

    .section-title {
      font-size: 40px;
      font-weight: 700;
      letter-spacing: -0.02em;
      color: #1d1d1f;
      margin-bottom: 12px;
    }

    .section-subtitle {
      font-size: 19px;
      color: #6e6e73;
      font-weight: 400;
      letter-spacing: -0.01em;
      max-width: 600px;
    }

    /* ========== BUTTONS (Apple style) ========== */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      padding: 12px 24px;
      border-radius: 980px;
      font-weight: 500;
      font-size: 17px;
      line-height: 1.17648;
      letter-spacing: -0.022em;
      transition: all 0.2s ease;
      border: 1px solid transparent;
      white-space: nowrap;
    }

    .btn-primary {
      background: #0071e3;
      color: #fff;
    }

    .btn-primary:hover {
      background: #0077ed;
      transform: scale(1.02);
    }

    .btn-outline {
      background: transparent;
      color: #0071e3;
      border: 1px solid #0071e3;
    }

    .btn-outline:hover {
      background: #0071e3;
      color: #fff;
    }

    .btn-ghost {
      background: rgba(255, 255, 255, 0.15);
      color: #fff;
      border: 1px solid rgba(255, 255, 255, 0.4);
      backdrop-filter: blur(10px);
    }

    .btn-ghost:hover {
      background: rgba(255, 255, 255, 0.25);
      border-color: rgba(255, 255, 255, 0.7);
    }

    .btn-sm {
      padding: 8px 18px;
      font-size: 14px;
    }

    /* ========== HEADER (glass / minimal) ========== */
    header {
      position: sticky;
      top: 0;
      z-index: 1000;
      background: rgba(255, 255, 255, 0.8);
      backdrop-filter: saturate(180%) blur(20px);
      -webkit-backdrop-filter: saturate(180%) blur(20px);
      border-bottom: 1px solid rgba(0, 0, 0, 0.06);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 10px 0;
      min-height: 52px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 8px;
      font-weight: 600;
      font-size: 21px;
      letter-spacing: -0.03em;
      color: #1d1d1f;
      flex-shrink: 0;
    }

    .brand i {
      font-size: 22px;
      color: #0071e3;
    }

    .brand .accent {
      color: #0071e3;
    }

    nav.main-nav ul {
      display: flex;
      gap: 4px;
      list-style: none;
      align-items: center;
    }

    nav.main-nav li a {
      display: flex;
      align-items: center;
      gap: 6px;
      padding: 8px 14px;
      border-radius: 980px;
      font-weight: 400;
      font-size: 14px;
      color: #1d1d1f;
      transition: background 0.2s ease;
      opacity: 0.8;
    }

    nav.main-nav li a:hover,
    nav.main-nav li a.active {
      background: #f5f5f7;
      opacity: 1;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 4px;
      flex-shrink: 0;
    }

    .header-actions .icon-btn {
      width: 38px;
      height: 38px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      font-size: 17px;
      color: #1d1d1f;
      transition: background 0.2s ease;
      opacity: 0.8;
    }

    .header-actions .icon-btn:hover {
      background: #f5f5f7;
      opacity: 1;
    }

    .cart-wrap {
      position: relative;
    }

    .cart-count {
      position: absolute;
      top: 1px;
      right: 1px;
      background: #0071e3;
      color: #fff;
      font-size: 10px;
      font-weight: 600;
      width: 18px;
      height: 18px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 1.5px solid #fff;
      transition: transform 0.2s ease;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: #f5f5f7;
      border-radius: 980px;
      padding: 0 14px 0 16px;
      transition: all 0.2s ease;
      min-width: 200px;
    }

    .search-wrap:focus-within {
      background: #fff;
      box-shadow: 0 0 0 3px rgba(0, 113, 227, 0.25);
    }

    .search-wrap input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 8px 0;
      font-size: 14px;
      color: #1d1d1f;
    }

    .search-wrap input::placeholder {
      color: #86868b;
    }

    .search-wrap button {
      padding: 8px 0 8px 8px;
      color: #86868b;
      font-size: 14px;
      transition: color 0.2s ease;
    }

    .search-wrap button:hover {
      color: #0071e3;
    }

    .mobile-toggle {
      display: none;
      width: 38px;
      height: 38px;
      border-radius: 50%;
      font-size: 18px;
      background: #f5f5f7;
      color: #1d1d1f;
      transition: background 0.2s ease;
    }

    .mobile-toggle:hover {
      background: #e8e8ed;
    }

    #mobileMenu {
      display: none;
      background: #fff;
      border-top: 1px solid rgba(0, 0, 0, 0.06);
      padding: 12px 0 18px;
    }

    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 2px;
    }

    #mobileMenu ul li a {
      display: flex;
      align-items: center;
      gap: 12px;
      padding: 10px 14px;
      border-radius: 8px;
      font-weight: 400;
      font-size: 15px;
      color: #1d1d1f;
      transition: background 0.2s ease;
    }

    #mobileMenu ul li a:hover {
      background: #f5f5f7;
    }

    /* ========== HERO (Apple-like large, clean) ========== */
    .hero {
      position: relative;
      display: flex;
      align-items: center;
      min-height: 520px;
      padding: 80px 0;
      background: #f5f5f7;
      overflow: hidden;
    }

    .hero::after {
      content: '';
      position: absolute;
      inset: 0;
      background: linear-gradient(90deg, rgba(245, 245, 247, 0.95) 0%, rgba(245, 245, 247, 0.3) 100%);
      z-index: 0;
      pointer-events: none;
    }

    .hero .container {
      position: relative;
      z-index: 2;
    }

    .hero .badge {
      display: inline-block;
      background: rgba(0, 113, 227, 0.12);
      color: #0071e3;
      padding: 6px 16px;
      border-radius: 980px;
      font-weight: 500;
      font-size: 14px;
      letter-spacing: 0.02em;
      margin-bottom: 20px;
    }

    .hero h1 {
      font-size: 64px;
      font-weight: 700;
      letter-spacing: -0.03em;
      color: #1d1d1f;
      line-height: 1.05;
      max-width: 720px;
      margin-bottom: 20px;
    }

    .hero p {
      font-size: 21px;
      color: #6e6e73;
      max-width: 580px;
      margin-bottom: 32px;
      line-height: 1.5;
    }

    .hero .actions {
      display: flex;
      gap: 16px;
      flex-wrap: wrap;
    }

    /* ========== SECTIONS ========== */
    .section {
      padding: 80px 0;
    }

    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 16px;
      margin-bottom: 44px;
      flex-wrap: wrap;
    }

    .section-header .title-group h2 {
      font-size: 40px;
      font-weight: 700;
      letter-spacing: -0.02em;
    }

    .section-header .title-group p {
      color: #6e6e73;
      margin-top: 6px;
      font-size: 17px;
      font-weight: 400;
    }

    .section-header .view-all {
      font-weight: 500;
      color: #0071e3;
      display: flex;
      align-items: center;
      gap: 6px;
      font-size: 15px;
      transition: gap 0.2s ease;
    }

    .section-header .view-all:hover {
      gap: 12px;
    }

    /* ========== CATEGORIES (clean cards) ========== */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 18px;
    }

    .cat-card {
      background: #f5f5f7;
      border-radius: 18px;
      padding: 28px 12px;
      text-align: center;
      transition: all 0.3s cubic-bezier(0.25, 0.1, 0.25, 1);
      cursor: pointer;
      border: 1px solid transparent;
    }

    .cat-card:hover {
      background: #ffffff;
      border-color: #d2d2d7;
      transform: translateY(-4px);
      box-shadow: 0 12px 28px rgba(0, 0, 0, 0.06);
    }

    .cat-card .icon-wrap {
      width: 52px;
      height: 52px;
      border-radius: 14px;
      background: #ffffff;
      display: grid;
      place-items: center;
      margin: 0 auto 12px;
      font-size: 22px;
      color: #0071e3;
      transition: all 0.3s ease;
      box-shadow: 0 2px 8px rgba(0, 0, 0, 0.04);
    }

    .cat-card:hover .icon-wrap {
      background: #0071e3;
      color: #fff;
      transform: scale(1.05);
    }

    .cat-card h4 {
      font-size: 15px;
      font-weight: 500;
      color: #1d1d1f;
    }

    .cat-card .count {
      font-size: 13px;
      color: #86868b;
      margin-top: 3px;
    }

    /* ========== PRODUCTS (grid, minimal) ========== */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 24px;
    }

    .product-card {
      background: #ffffff;
      border-radius: 20px;
      overflow: hidden;
      transition: all 0.3s cubic-bezier(0.25, 0.1, 0.25, 1);
      display: flex;
      flex-direction: column;
      border: 1px solid #f0f0f2;
    }

    .product-card:hover {
      border-color: #d2d2d7;
      transform: translateY(-6px);
      box-shadow: 0 20px 36px rgba(0, 0, 0, 0.06);
    }

    .product-card .img-wrap {
      position: relative;
      overflow: hidden;
      background: #f5f5f7;
      aspect-ratio: 1 / 1;
    }

    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 0.4s cubic-bezier(0.25, 0.1, 0.25, 1);
    }

    .product-card:hover .img-wrap img {
      transform: scale(1.03);
    }

    .product-card .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: #0071e3;
      color: #fff;
      padding: 4px 12px;
      border-radius: 980px;
      font-size: 11px;
      font-weight: 600;
      letter-spacing: 0.02em;
    }

    .product-card .badge.sale {
      background: #e07a5f;
    }

    .product-card .wish-btn {
      position: absolute;
      top: 12px;
      right: 12px;
      width: 32px;
      height: 32px;
      border-radius: 50%;
      background: rgba(255, 255, 255, 0.85);
      backdrop-filter: blur(6px);
      display: grid;
      place-items: center;
      font-size: 14px;
      color: #86868b;
      transition: all 0.2s ease;
    }

    .product-card .wish-btn:hover {
      background: #fff;
      color: #e07a5f;
      transform: scale(1.1);
    }

    .product-card .body {
      padding: 18px 18px 12px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 5px;
    }

    .product-card .body .category-tag {
      font-size: 12px;
      color: #86868b;
      text-transform: uppercase;
      letter-spacing: 0.04em;
      font-weight: 500;
    }

    .product-card .body h5 {
      font-size: 16px;
      font-weight: 500;
      line-height: 1.3;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
      color: #1d1d1f;
    }

    .product-card .body .price-row {
      display: flex;
      align-items: center;
      gap: 8px;
      margin-top: 4px;
    }

    .product-card .body .price {
      font-weight: 600;
      font-size: 17px;
      color: #1d1d1f;
    }

    .product-card .body .old-price {
      color: #86868b;
      text-decoration: line-through;
      font-size: 14px;
      font-weight: 400;
    }

    .product-card .body .rating {
      display: flex;
      align-items: center;
      gap: 3px;
      font-size: 12px;
      color: #f5a623;
    }

    .product-card .body .rating span {
      color: #86868b;
      font-weight: 400;
      margin-left: 3px;
    }

    .product-card .footer {
      padding: 0 18px 18px;
      display: flex;
      gap: 8px;
    }

    .product-card .footer .add-btn {
      flex: 1;
      padding: 9px;
      border-radius: 980px;
      background: #0071e3;
      color: #fff;
      font-weight: 500;
      font-size: 14px;
      transition: all 0.2s ease;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
    }

    .product-card .footer .add-btn:hover {
      background: #0077ed;
      transform: scale(1.02);
    }

    .product-card .footer .add-btn.added {
      background: #2a9d8f;
    }

    /* ========== DEAL (Apple-style card) ========== */
    .deal-wrap {
      display: flex;
      gap: 0;
      background: #f5f5f7;
      border-radius: 28px;
      overflow: hidden;
      transition: box-shadow 0.3s ease;
    }

    .deal-wrap:hover {
      box-shadow: 0 20px 40px rgba(0, 0, 0, 0.04);
    }

    .deal-wrap .deal-img {
      flex: 0 0 45%;
      background: #e8e8ed;
      min-height: 340px;
    }

    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .deal-wrap .deal-content {
      flex: 1;
      padding: 48px 52px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .deal-wrap .deal-content .tag {
      display: inline-block;
      background: #e07a5f;
      color: #fff;
      padding: 4px 14px;
      border-radius: 980px;
      font-size: 12px;
      font-weight: 600;
      text-transform: uppercase;
      letter-spacing: 0.03em;
      align-self: flex-start;
      margin-bottom: 16px;
    }

    .deal-wrap .deal-content h3 {
      font-size: 34px;
      font-weight: 700;
      letter-spacing: -0.02em;
      margin-bottom: 6px;
    }

    .deal-wrap .deal-content .desc {
      color: #6e6e73;
      margin-bottom: 20px;
      font-size: 16px;
      line-height: 1.5;
    }

    .deal-wrap .deal-content .price-big {
      font-size: 38px;
      font-weight: 700;
      color: #1d1d1f;
      letter-spacing: -0.02em;
    }

    .deal-wrap .deal-content .price-big .old {
      font-size: 22px;
      font-weight: 400;
      color: #86868b;
      text-decoration: line-through;
      margin-left: 12px;
    }

    .deal-wrap .deal-content .stock {
      font-size: 15px;
      color: #6e6e73;
      margin: 6px 0 18px;
    }

    .deal-wrap .deal-content .stock strong {
      color: #e07a5f;
    }

    .timer-grid {
      display: flex;
      gap: 12px;
      margin: 18px 0 24px;
    }

    .timer-box {
      background: #1d1d1f;
      color: #fff;
      padding: 12px 18px;
      border-radius: 16px;
      min-width: 72px;
      text-align: center;
    }

    .timer-box .num {
      font-size: 28px;
      font-weight: 600;
      line-height: 1.2;
      letter-spacing: -0.02em;
    }

    .timer-box .label {
      font-size: 11px;
      opacity: 0.7;
      text-transform: uppercase;
      letter-spacing: 0.04em;
      margin-top: 2px;
    }

    /* ========== TESTIMONIALS ========== */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 20px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }

    .testimonials-scroll::-webkit-scrollbar {
      height: 3px;
    }

    .testimonials-scroll::-webkit-scrollbar-thumb {
      background: #d2d2d7;
      border-radius: 980px;
    }

    .testimonial-card {
      flex: 0 0 360px;
      background: #f5f5f7;
      border-radius: 24px;
      padding: 28px 30px;
      scroll-snap-align: start;
      transition: all 0.3s ease;
    }

    .testimonial-card:hover {
      background: #ffffff;
      box-shadow: 0 12px 28px rgba(0, 0, 0, 0.04);
      border: 1px solid #f0f0f2;
    }

    .testimonial-card .stars {
      color: #f5a623;
      font-size: 15px;
      letter-spacing: 2px;
      margin-bottom: 12px;
    }

    .testimonial-card blockquote {
      font-size: 16px;
      line-height: 1.5;
      color: #1d1d1f;
      margin-bottom: 18px;
      font-style: normal;
      font-weight: 400;
    }

    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 14px;
    }

    .testimonial-card .author .avatar {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      object-fit: cover;
      background: #e8e8ed;
    }

    .testimonial-card .author .name {
      font-weight: 600;
      font-size: 15px;
    }

    .testimonial-card .author .role {
      font-size: 13px;
      color: #86868b;
      margin-top: 1px;
    }

    /* ========== NEWSLETTER ========== */
    .newsletter-wrap {
      background: #1d1d1f;
      border-radius: 28px;
      padding: 56px 64px;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 40px;
      flex-wrap: wrap;
    }

    .newsletter-wrap .text h3 {
      font-size: 32px;
      font-weight: 700;
      letter-spacing: -0.02em;
      margin-bottom: 6px;
    }

    .newsletter-wrap .text p {
      opacity: 0.7;
      font-size: 17px;
      font-weight: 400;
    }

    .newsletter-wrap form {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 480px;
    }

    .newsletter-wrap form input {
      flex: 1;
      min-width: 200px;
      padding: 14px 22px;
      border-radius: 980px;
      border: 1px solid rgba(255, 255, 255, 0.15);
      font-size: 15px;
      background: rgba(255, 255, 255, 0.08);
      color: #fff;
      transition: all 0.2s ease;
      outline: none;
    }

    .newsletter-wrap form input::placeholder {
      color: rgba(255, 255, 255, 0.5);
    }

    .newsletter-wrap form input:focus {
      border-color: #0071e3;
      background: rgba(255, 255, 255, 0.12);
      box-shadow: 0 0 0 3px rgba(0, 113, 227, 0.2);
    }

    .newsletter-wrap form .btn {
      background: #0071e3;
      color: #fff;
      border: none;
      padding: 14px 32px;
    }

    .newsletter-wrap form .btn:hover {
      background: #0077ed;
    }

    #newsletterMsg {
      margin-top: 12px;
      font-size: 14px;
      opacity: 0.9;
      width: 100%;
      color: #a8e6cf;
    }

    /* ========== FOOTER ========== */
    footer {
      margin-top: 20px;
      padding: 48px 0 32px;
      border-top: 1px solid #f0f0f2;
    }

    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 48px;
      margin-bottom: 36px;
    }

    .footer-grid .brand-col .brand {
      font-size: 20px;
      margin-bottom: 12px;
    }

    .footer-grid .brand-col p {
      color: #6e6e73;
      font-size: 15px;
      max-width: 300px;
      line-height: 1.5;
    }

    .footer-grid .brand-col .socials {
      display: flex;
      gap: 12px;
      margin-top: 20px;
    }

    .footer-grid .brand-col .socials a {
      width: 38px;
      height: 38px;
      border-radius: 50%;
      background: #f5f5f7;
      display: grid;
      place-items: center;
      color: #6e6e73;
      transition: all 0.2s ease;
      font-size: 16px;
    }

    .footer-grid .brand-col .socials a:hover {
      background: #0071e3;
      color: #fff;
    }

    .footer-grid .col h5 {
      font-weight: 600;
      font-size: 14px;
      margin-bottom: 16px;
      color: #1d1d1f;
      letter-spacing: 0.02em;
    }

    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 8px;
    }

    .footer-grid .col ul li a {
      color: #6e6e73;
      font-size: 14px;
      transition: color 0.2s ease;
    }

    .footer-grid .col ul li a:hover {
      color: #0071e3;
    }

    .footer-bottom {
      text-align: center;
      padding-top: 24px;
      border-top: 1px solid #f0f0f2;
      color: #86868b;
      font-size: 13px;
    }

    /* ========== RESPONSIVE ========== */
    @media (max-width: 1200px) {
      .products-grid {
        grid-template-columns: repeat(3, 1fr);
      }
      .categories-grid {
        grid-template-columns: repeat(3, 1fr);
      }
      .footer-grid {
        grid-template-columns: 1fr 1fr;
        gap: 32px;
      }
    }

    @media (max-width: 992px) {
      .hero h1 {
        font-size: 48px;
      }
      .hero {
        min-height: 400px;
        padding: 60px 0;
      }
      .deal-wrap {
        flex-direction: column;
      }
      .deal-wrap .deal-img {
        flex: 0 0 240px;
      }
      .deal-wrap .deal-content {
        padding: 32px 30px;
      }
      .newsletter-wrap {
        padding: 40px 32px;
        flex-direction: column;
        text-align: center;
      }
      .newsletter-wrap form {
        max-width: 100%;
      }
      .search-wrap {
        min-width: 150px;
      }
    }

    @media (max-width: 768px) {
      nav.main-nav {
        display: none;
      }
      .mobile-toggle {
        display: grid;
        place-items: center;
      }
      .products-grid {
        grid-template-columns: repeat(2, 1fr);
        gap: 16px;
      }
      .categories-grid {
        grid-template-columns: repeat(2, 1fr);
        gap: 12px;
      }
      .hero h1 {
        font-size: 36px;
      }
      .hero p {
        font-size: 17px;
      }
      .section-title {
        font-size: 28px;
      }
      .section-header .title-group h2 {
        font-size: 28px;
      }
      .deal-wrap .deal-content h3 {
        font-size: 26px;
      }
      .deal-wrap .deal-content .price-big {
        font-size: 30px;
      }
      .timer-box {
        min-width: 58px;
        padding: 8px 12px;
      }
      .timer-box .num {
        font-size: 22px;
      }
      .footer-grid {
        grid-template-columns: 1fr;
        gap: 24px;
      }
      .brand {
        font-size: 18px;
      }
      .brand i {
        font-size: 18px;
      }
      .search-wrap {
        min-width: 120px;
        padding: 0 10px 0 14px;
      }
      .search-wrap input {
        font-size: 13px;
        padding: 6px 0;
      }
      .header-actions .icon-btn {
        width: 34px;
        height: 34px;
        font-size: 15px;
      }
      .cart-count {
        width: 16px;
        height: 16px;
        font-size: 9px;
      }
      .testimonial-card {
        flex: 0 0 280px;
        padding: 22px 24px;
      }
      .hero .actions .btn {
        padding: 10px 20px;
        font-size: 15px;
      }
      .section {
        padding: 52px 0;
      }
    }

    @media (max-width: 480px) {
      .products-grid {
        grid-template-columns: 1fr 1fr;
        gap: 12px;
      }
      .categories-grid {
        grid-template-columns: 1fr 1fr;
        gap: 10px;
      }
      .hero {
        min-height: 320px;
        padding: 40px 0;
      }
      .hero h1 {
        font-size: 28px;
      }
      .container {
        padding: 0 16px;
      }
      .deal-wrap .deal-content {
        padding: 24px 20px;
      }
      .deal-wrap .deal-img {
        flex: 0 0 180px;
      }
      .newsletter-wrap {
        padding: 28px 20px;
      }
      .newsletter-wrap .text h3 {
        font-size: 24px;
      }
      .product-card .body {
        padding: 14px 12px 8px;
      }
      .product-card .body h5 {
        font-size: 14px;
      }
      .product-card .body .price {
        font-size: 15px;
      }
      .product-card .footer {
        padding: 0 12px 14px;
      }
      .product-card .footer .add-btn {
        font-size: 12px;
        padding: 8px;
      }
      .timer-box {
        min-width: 48px;
        padding: 6px 8px;
      }
      .timer-box .num {
        font-size: 16px;
      }
      .timer-box .label {
        font-size: 9px;
      }
      .cat-card {
        padding: 18px 10px;
      }
      .cat-card .icon-wrap {
        width: 42px;
        height: 42px;
        font-size: 18px;
      }
      .cat-card h4 {
        font-size: 13px;
      }
      .section-header {
        margin-bottom: 28px;
      }
    }
  </style>
</head>

<body>

  <!-- ===== HEADER ===== -->
  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:12px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
          <i class="fas fa-bars"></i>
        </button>
        <a class="brand" href="#">
          <i class="fas fa-store-alt"></i>
          <span>Nexus<span class="accent">Shop</span></span>
        </a>
      </div>

      <nav class="main-nav" id="mainNav" aria-label="Main navigation">
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
            <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart">
              <i class="fas fa-shopping-bag"></i>
            </button>
            <span class="cart-count" id="cartCount">0</span>
          </div>
        </div>
      </div>
    </div>

    <!-- Mobile Menu -->
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

  <!-- ===== MAIN ===== -->
  <main>

    <!-- HERO (Apple-like clean) -->
    <section class="hero" aria-label="Hero banner">
      <div class="container">
        <div class="badge"><i class="fas fa-sparkles"></i> New Collection 2026</div>
        <h1>Discover Premium<br>Essentials</h1>
        <p>Curated fashion, tech & accessories with free shipping on your first order. Limited-time deals await.</p>
        <div class="actions">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
          <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
        </div>
      </div>
    </section>

    <!-- CATEGORIES -->
    <section class="section" id="categories" aria-labelledby="cat-title">
      <div class="container">
        <div class="section-header">
          <div class="title-group">
            <h2 id="cat-title">Browse Categories</h2>
            <p>Find exactly what you're looking for</p>
          </div>
          <a href="#" class="view-all">All Categories <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
      </div>
    </section>

    <!-- PRODUCTS -->
    <section class="section" id="products" aria-labelledby="prod-title">
      <div class="container">
        <div class="section-header">
          <div class="title-group">
            <h2 id="prod-title">Trending Now</h2>
            <p>What's hot — popular picks from our community</p>
          </div>
          <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="products-grid" id="productsGrid" aria-live="polite"></div>
      </div>
    </section>

    <!-- DEAL -->
    <section class="section" id="deals" aria-labelledby="deals-title">
      <div class="container">
        <div class="section-header">
          <div class="title-group">
            <h2 id="deals-title">⚡ Flash Deal</h2>
            <p>Grab it before it's gone — limited stock</p>
          </div>
        </div>
        <div class="deal-wrap">
          <div class="deal-img">
            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
          </div>
          <div class="deal-content">
            <span class="tag"><i class="fas fa-bolt"></i> Limited Offer</span>
            <h3>MacBook Air M2</h3>
            <p class="desc">Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>
            <div>
              <span class="price-big">$999 <span class="old">$1,199</span></span>
            </div>
            <p class="stock">Only <strong>12</strong> items left — hurry!</p>
            <div class="timer-grid" id="dealTimer">
              <div class="timer-box">
                <div class="num" id="dealDays">0</div>
                <div class="label">Days</div>
              </div>
              <div class="timer-box">
                <div class="num" id="dealHours">00</div>
                <div class="label">Hours</div>
              </div>
              <div class="timer-box">
                <div class="num" id="dealMinutes">00</div>
                <div class="label">Mins</div>
              </div>
              <div class="timer-box">
                <div class="num" id="dealSeconds">00</div>
                <div class="label">Secs</div>
              </div>
            </div>
            <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to Cart</button>
          </div>
        </div>
      </div>
    </section>

    <!-- TESTIMONIALS -->
    <section class="section" id="testimonials" aria-labelledby="test-title">
      <div class="container">
        <div class="section-header">
          <div class="title-group">
            <h2 id="test-title">What Our Customers Say</h2>
            <p>Real reviews from real people</p>
          </div>
        </div>
        <div class="testimonials-scroll" id="testimonialsList"></div>
      </div>
    </section>

    <!-- NEWSLETTER -->
    <section class="section" aria-labelledby="news-title">
      <div class="container">
        <div class="newsletter-wrap">
          <div class="text">
            <h3 id="news-title">Stay in the Loop</h3>
            <p>Get exclusive offers, early access & new arrivals</p>
          </div>
          <form id="newsletterForm" onsubmit="return false;">
            <input type="email" id="newsletterEmail" placeholder="Enter your email" aria-label="Email" required />
            <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
            <div id="newsletterMsg"></div>
          </form>
        </div>
      </div>
    </section>

  </main>

  <!-- ===== FOOTER ===== -->
  <footer>
    <div class="container">
      <div class="footer-grid">
        <div class="brand-col">
          <div class="brand">
            <i class="fas fa-store-alt"></i>
            <span>Nexus<span class="accent">Shop</span></span>
          </div>
          <p>Modern e‑commerce demo built with care. Quality products, seamless experience.</p>
          <div class="socials">
            <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
            <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
            <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
            <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
          </div>
        </div>
        <div class="col">
          <h5>Company</h5>
          <ul>
            <li><a href="#">About</a></li>
            <li><a href="#">Careers</a></li>
            <li><a href="#">Press</a></li>
            <li><a href="#">Blog</a></li>
          </ul>
        </div>
        <div class="col">
          <h5>Support</h5>
          <ul>
            <li><a href="#">Help Center</a></li>
            <li><a href="#">Shipping</a></li>
            <li><a href="#">Returns</a></li>
            <li><a href="#">Contact</a></li>
          </ul>
        </div>
        <div class="col">
          <h5>Legal</h5>
          <ul>
            <li><a href="#">Privacy</a></li>
            <li><a href="#">Terms</a></li>
            <li><a href="#">Cookies</a></li>
          </ul>
        </div>
      </div>
      <div class="footer-bottom">
        &copy; <span id="year"></span> NexusShop. All rights reserved.
      </div>
    </div>
  </footer>

  <!-- ===== SCRIPT (same functionality, Apple-style interactions) ===== -->
  <script>
    // ============================================================
    // DATA
    // ============================================================
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
    ];

    const PRODUCTS = [
      { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
        img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
        category: 'Smartphones' },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '',
        img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
        category: 'Laptops' },
      { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale',
        img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
        category: 'Accessories' },
      { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '',
        img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
        category: 'Footwear' },
      { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New',
        img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
        category: 'Gadgets' },
      { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '',
        img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
        category: 'Accessories' },
      { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale',
        img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
        category: 'Accessories' },
      { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '',
        img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
        category: 'Gadgets' }
    ];

    const TESTIMONIALS = [{
      name: 'Ava Martin',
      role: 'Verified Buyer',
      avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
      text: 'Fast shipping and excellent support. The product exceeded my expectations!',
      stars: 5
    }, {
      name: 'Michael Lee',
      role: 'Frequent Shopper',
      avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
      text: 'Great selection and smooth checkout. Will definitely shop again.',
      stars: 4
    }, {
      name: 'Sophia Chen',
      role: 'Designer',
      avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
      text: 'Love the quality and the packaging. Everything arrived in perfect condition.',
      stars: 5
    }, {
      name: 'James Wilson',
      role: 'Tech Enthusiast',
      avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
      text: 'Amazing prices on electronics. The M2 MacBook deal was unbeatable.',
      stars: 5
    }];

    // ============================================================
    // STATE
    // ============================================================
    let cartCount = 0;

    // ============================================================
    // DOM REFS
    // ============================================================
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    const searchBtn = document.getElementById('searchBtn');
    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenu = document.getElementById('mobileMenu');
    const newsletterForm = document.getElementById('newsletterForm');
    const newsletterEmail = document.getElementById('newsletterEmail');
    const newsletterMsg = document.getElementById('newsletterMsg');
    const testimonialsList = document.getElementById('testimonialsList');

    // ============================================================
    // RENDER FUNCTIONS
    // ============================================================
    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(cat => {
        const el = document.createElement('div');
        el.className = 'cat-card';
        el.innerHTML = `
          <div class="icon-wrap"><i class="fas ${cat.icon}"></i></div>
          <h4>${cat.name}</h4>
          <div class="count">${cat.count} items</div>
        `;
        el.addEventListener('click', () => {
          searchInput.value = cat.name;
          filterProducts(cat.name);
          document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        categoriesGrid.appendChild(el);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      if (!list.length) {
        productsGrid.innerHTML = `<p style="grid-column:1/-1;text-align:center;padding:40px;color:#86868b;">No products found.</p>`;
        return;
      }
      list.forEach(p => {
        const el = document.createElement('article');
        el.className = 'product-card';
        const badgeClass = p.badge === 'Sale' ? 'sale' : '';
        const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
        const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : '';
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
              ${oldPriceHtml}
            </div>
            <div class="rating">
              ${stars} <span>(${p.reviews})</span>
            </div>
          </div>
          <div class="footer">
            <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
          </div>
        `;
        productsGrid.appendChild(el);
      });

      // Add to cart listeners
      productsGrid.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', function(e) {
          e.stopPropagation();
          const id = Number(this.dataset.id);
          addToCart(id, this);
        });
      });
    }

    function renderTestimonials() {
      testimonialsList.innerHTML = '';
      TESTIMONIALS.forEach(t => {
        const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
        const el = document.createElement('div');
        el.className = 'testimonial-card';
        el.innerHTML = `
          <div class="stars">${stars}</div>
          <blockquote>“${escapeHtml(t.text)}”</blockquote>
          <div class="author">
            <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
            <div>
              <div class="name">${escapeHtml(t.name)}</div>
              <div class="role">${escapeHtml(t.role)}</div>
            </div>
          </div>
        `;
        testimonialsList.appendChild(el);
      });
    }

    // ============================================================
    // UTILITY FUNCTIONS
    // ============================================================
    function escapeHtml(text) {
      return String(text).replace(/[&<>"']/g, s => ({
        '&': '&amp;',
        '<': '&lt;',
        '>': '&gt;',
        '"': '&quot;',
        "'": '&#39;'
      } [s]));
    }

    function updateCartCount() {
      cartCountEl.textContent = cartCount;
      cartCountEl.style.transform = 'scale(1.3)';
      setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);
    }

    function addToCart(productId, btnEl) {
      const p = PRODUCTS.find(x => x.id === productId);
      if (!p) return;
      cartCount++;
      updateCartCount();

      if (btnEl) {
        const orig = btnEl.innerHTML;
        btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
        btnEl.classList.add('added');
        setTimeout(() => {
          btnEl.innerHTML = orig;
          btnEl.classList.remove('added');
        }, 1500);
      }
      const cartBtn = document.getElementById('cartBtn');
      cartBtn.style.color = '#0071e3';
      setTimeout(() => cartBtn.style.color = '', 400);
    }

    function filterProducts(query) {
      const q = String(query || '').trim().toLowerCase();
      if (!q) {
        renderProducts(PRODUCTS);
        return;
      }
      const filtered = PRODUCTS.filter(p =>
        p.title.toLowerCase().includes(q) ||
        p.category.toLowerCase().includes(q)
      );
      renderProducts(filtered);
    }

    // ============================================================
    // DEAL TIMER
    // ============================================================
    (function setupDealTimer() {
      const now = new Date();
      const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);

      function tick() {
        const diff = target - new Date();
        if (diff <= 0) {
          document.getElementById('dealDays').textContent = '0';
          document.getElementById('dealHours').textContent = '00';
          document.getElementById('dealMinutes').textContent = '00';
          document.getElementById('dealSeconds').textContent = '00';
          return;
        }
        const days = Math.floor(diff / (24 * 3600 * 1000));
        const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
        const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
        const secs = Math.floor((diff % (60 * 1000)) / 1000);
        document.getElementById('dealDays').textContent = days;
        document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
        document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
        document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
      }
      tick();
      setInterval(tick, 1000);
    })();

    // ============================================================
    // EVENT BINDINGS
    // ============================================================

    searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', (e) => {
      if (e.key === 'Enter') filterProducts(e.target.value);
    });

    mobileToggle.addEventListener('click', () => {
      const isOpen = mobileMenu.style.display === 'block';
      mobileMenu.style.display = isOpen ? 'none' : 'block';
      mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
    });

    mobileMenu.querySelectorAll('a').forEach(link => {
      link.addEventListener('click', () => {
        mobileMenu.style.display = 'none';
        mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
      });
    });

    document.getElementById('shopNow').addEventListener('click', () => {
      document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
    });
    document.getElementById('exploreDeals').addEventListener('click', () => {
      document.getElementById('deals').scrollIntoView({ behavior: 'smooth', block: 'start' });
    });

    document.getElementById('buyDeal').addEventListener('click', function() {
      cartCount++;
      updateCartCount();
      const orig = this.innerHTML;
      this.innerHTML = '<i class="fas fa-check"></i> Added!';
      this.style.background = '#2a9d8f';
      setTimeout(() => {
        this.innerHTML = orig;
        this.style.background = '';
      }, 1600);
    });

    newsletterForm.addEventListener('submit', (e) => {
      e.preventDefault();
      const email = newsletterEmail.value.trim();
      if (!email || !email.includes('@')) {
        newsletterMsg.textContent = 'Please enter a valid email address.';
        newsletterMsg.style.color = '#ffb3b3';
        newsletterMsg.style.display = 'block';
        return;
      }
      newsletterMsg.textContent = '🎉 Thanks for subscribing!';
      newsletterMsg.style.color = '#a8e6cf';
      newsletterMsg.style.display = 'block';
      newsletterEmail.value = '';
      setTimeout(() => {
        newsletterMsg.style.display = 'none';
      }, 3500);
    });

    document.getElementById('cartBtn').addEventListener('click', () => {
      alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
    });

    document.getElementById('year').textContent = new Date().getFullYear();

    // ============================================================
    // INIT
    // ============================================================
    renderCategories();
    renderProducts(PRODUCTS);
    renderTestimonials();
    updateCartCount();

    window.addEventListener('resize', () => {
      if (window.innerWidth > 768) {
        mobileMenu.style.display = 'none';
        mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
      }
    });

    console.log('🍎 NexusShop — Apple-inspired design loaded.');
  </script>

</body>
</html>
